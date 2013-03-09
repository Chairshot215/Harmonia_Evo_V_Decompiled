.class public Lcom/htc/android/mail/MailListTab;
.super Lcom/htc/widget/CarouselActivity;
.source "MailListTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/MailListTab$LoadAccountListTask;,
        Lcom/htc/android/mail/MailListTab$BackGroundHandler;,
        Lcom/htc/android/mail/MailListTab$UpdateContentObserver;,
        Lcom/htc/android/mail/MailListTab$SummaryContentObserver;,
        Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;,
        Lcom/htc/android/mail/MailListTab$UpdateGroupCountRunnable;,
        Lcom/htc/android/mail/MailListTab$RequestHandler;,
        Lcom/htc/android/mail/MailListTab$AccountCommitRunnable;,
        Lcom/htc/android/mail/MailListTab$AccountListChangeObserver;
    }
.end annotation


# static fields
.field public static final ACCOUNT_PICKER:I = 0x3

.field public static final ACNT_CONFIG_REQUEST:I = 0x1

.field static final AIRPLANE_NOTIFY:I = 0x4

.field public static final CFG_RESULT_DELETE_ACCOUNT:I = 0x66

.field public static final CREATE_ACCOUNT:I = 0x2

.field private static DEBUG:Z = false

.field static final DIALOG_SEARCH_FILTER:I = 0x12

.field public static final OPEN_DETAIL_VIEW:I = 0x4

.field public static final REQUEST_CODE_CONTACT_GROUP:I = 0x6

.field public static final REQUEST_CODE_HTC_CONTACTS:I = 0x5

.field public static final STR_TAB_ATTACH:Ljava/lang/String; = "tab_attach"

.field public static final STR_TAB_DEFAULT:Ljava/lang/String; = "tab_inbox"

.field public static final STR_TAB_FOLDERS:Ljava/lang/String; = "tab_folders"

.field public static final STR_TAB_GROUPS:Ljava/lang/String; = "tab_groups"

.field public static final STR_TAB_IMPORTANT:Ljava/lang/String; = "tab_important"

.field public static final STR_TAB_MARK:Ljava/lang/String; = "tab_mark"

.field public static final STR_TAB_MEETING:Ljava/lang/String; = "tab_meeting"

.field public static final STR_TAB_THREAD:Ljava/lang/String; = "tab_thread"

.field public static final STR_TAB_UNREAD:Ljava/lang/String; = "tab_unread"

.field public static final TAB_ATTACH:I = 0x4

.field public static final TAB_COUNT:I = 0x9

.field public static final TAB_DEFAULT:I = 0x0

.field public static final TAB_FOLDERS:I = 0x1

.field public static final TAB_GROUPS:I = 0x8

.field public static final TAB_IMPORTANT:I = 0x7

.field public static final TAB_MARK:I = 0x3

.field public static final TAB_MEETING:I = 0x6

.field public static final TAB_THREAD:I = 0x2

.field public static final TAB_UNREAD:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MailListTab"


# instance fields
.field private Expand_groupId:Ljava/lang/String;

.field private Expand_group_Account:J

.field private fromCalendarApp:Z

.field private goToTabString:Ljava/lang/String;

.field protected lastTabID:I

.field private mAccount:Lcom/htc/android/mail/Account;

.field private mAccountId:J

.field private mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;

.field private mAccountListChangeObserver:Landroid/database/ContentObserver;

.field private mAccountListCursor:Landroid/database/MatrixCursor;

.field private mBackGroundHandler:Landroid/os/Handler;

.field private mBaseUri:Landroid/net/Uri;

.field public mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

.field public mButton1ReadStatus:I

.field mCarouselTopPadding:I

.field public mClearReadMessageIds:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurMailboxIndex:I

.field private mDirty:Z

.field protected mExpandConversation:Z

.field private mFirstLoadedTab:Ljava/lang/String;

.field mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

.field mFooterBarArea:Landroid/widget/FrameLayout;

.field mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field mFooterButton2:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field mFooterButton3:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field private mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

.field private mGroupNumCount:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

.field protected mIntent:Landroid/content/Intent;

.field private mIsConversationTabExist:Z

.field private mIsFirstLaunch:Z

.field protected mIsIMEup:Z

.field private mIsInForeground:Z

.field protected mIsMailSearch:Z

.field private mLoadAccountListTask:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

.field mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

.field mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

.field private mMailbox:Lcom/htc/android/mail/Mailbox;

.field protected mNoSetLastEntryAcct:Z

.field public mPanelHost:Lcom/htc/widget/CarouselHost;

.field private mRegisteredTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestController:Lcom/htc/android/mail/AbsRequestController;

.field private mRequestHandler:Lcom/htc/android/mail/MailListTab$RequestHandler;

.field private mSearchAdapter:Lcom/htc/android/mail/SearchFilterAdapter;

.field private mSearchBaseUri:Landroid/net/Uri;

.field public mSearchFromContextMenu:Z

.field protected mSearchKey:Ljava/lang/String;

.field public mSelectedMailGroupsCount:I

.field mStubMailListSearchBar:Landroid/view/ViewStub;

.field private mSummaryContentObserver:Lcom/htc/android/mail/MailListTab$SummaryContentObserver;

.field mTab:Landroid/view/View;

.field private mTabInit:Z

.field protected mTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

.field private mTrackMsgCursor:Landroid/database/Cursor;

.field private mUpdateContentObserver:Lcom/htc/android/mail/MailListTab$UpdateContentObserver;

.field private mUpdateGroupCountRunnable:Lcom/htc/android/mail/MailListTab$UpdateGroupCountRunnable;

.field private mUpdateTabUnreadRunnable:Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;

.field private mUpdateTime:J

.field private mUri:Landroid/net/Uri;

.field private mWeakHandlerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

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

.field protected selected_group:Ljava/lang/String;

.field protected selected_group_account:J

.field private showNetworkWarning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 689
    const-string v0, "com.htc.android.mail.MailCarousel"

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    .line 102
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/htc/android/mail/MailList$BasicTabInfo;

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    .line 104
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->showNetworkWarning:Z

    .line 110
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 111
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->Expand_groupId:Ljava/lang/String;

    .line 112
    iput-wide v4, p0, Lcom/htc/android/mail/MailListTab;->Expand_group_Account:J

    .line 113
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->fromCalendarApp:Z

    .line 119
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 120
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    .line 121
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    .line 122
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    .line 123
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->mTabInit:Z

    .line 124
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    .line 125
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mAccountListChangeObserver:Landroid/database/ContentObserver;

    .line 127
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mContext:Landroid/content/Context;

    .line 129
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/MailListTab;->lastTabID:I

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mRegisteredTabs:Ljava/util/ArrayList;

    .line 133
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mFirstLoadedTab:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mWeakHandlerSet:Ljava/util/Set;

    .line 136
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;

    .line 140
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mBackGroundHandler:Landroid/os/Handler;

    .line 142
    new-instance v0, Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;-><init>(Lcom/htc/android/mail/MailListTab;Lcom/htc/android/mail/MailListTab$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mUpdateTabUnreadRunnable:Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;

    .line 143
    new-instance v0, Lcom/htc/android/mail/MailListTab$UpdateGroupCountRunnable;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/mail/MailListTab$UpdateGroupCountRunnable;-><init>(Lcom/htc/android/mail/MailListTab;Lcom/htc/android/mail/MailListTab$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mUpdateGroupCountRunnable:Lcom/htc/android/mail/MailListTab$UpdateGroupCountRunnable;

    .line 148
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->mDirty:Z

    .line 149
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->mExpandConversation:Z

    .line 150
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->selected_group:Ljava/lang/String;

    .line 151
    iput-wide v4, p0, Lcom/htc/android/mail/MailListTab;->selected_group_account:J

    .line 152
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    .line 153
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->mNoSetLastEntryAcct:Z

    .line 154
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    .line 156
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->mSearchFromContextMenu:Z

    .line 157
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->mClearReadMessageIds:Z

    .line 158
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    const-string v1, ""

    invoke-direct {v0, v4, v5, v1}, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;-><init>(JLjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    .line 161
    new-instance v0, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mGroupNumCount:Lcom/htc/android/mail/util/SparseArray;

    .line 166
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    .line 167
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    .line 168
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mStubMailListSearchBar:Landroid/view/ViewStub;

    .line 172
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mTab:Landroid/view/View;

    .line 173
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->mIsIMEup:Z

    .line 175
    iput-boolean v6, p0, Lcom/htc/android/mail/MailListTab;->mIsFirstLaunch:Z

    .line 176
    iput-boolean v6, p0, Lcom/htc/android/mail/MailListTab;->mIsConversationTabExist:Z

    .line 178
    iput v3, p0, Lcom/htc/android/mail/MailListTab;->mCarouselTopPadding:I

    .line 180
    iput v3, p0, Lcom/htc/android/mail/MailListTab;->mCurMailboxIndex:I

    .line 183
    iput v3, p0, Lcom/htc/android/mail/MailListTab;->mSelectedMailGroupsCount:I

    .line 184
    iput v3, p0, Lcom/htc/android/mail/MailListTab;->mButton1ReadStatus:I

    .line 239
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    .line 241
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mFooterBarArea:Landroid/widget/FrameLayout;

    .line 242
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    .line 243
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 244
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mFooterButton2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 245
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mFooterButton3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 1581
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;

    .line 1582
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mLoadAccountListTask:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    .line 1583
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mAccountListCursor:Landroid/database/MatrixCursor;

    .line 1584
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mTrackMsgCursor:Landroid/database/Cursor;

    .line 690
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/MailListTab;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/android/mail/MailListTab;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/MailListTab;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->Expand_groupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/MailListTab;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/htc/android/mail/MailListTab;->Expand_group_Account:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/MailListTab;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mTrackMsgCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/android/mail/MailListTab;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab;->mTrackMsgCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/AbsRequestController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/android/mail/MailListTab;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/android/mail/MailListTab;->mDirty:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/android/mail/MailListTab;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/htc/android/mail/MailListTab;->mDirty:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/android/mail/MailListTab;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailListTab;->updateTabUnreadNumberView(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/android/mail/MailListTab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/android/mail/MailListTab;->doUpdateDropList()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/android/mail/MailListTab;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/MailListTab;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/android/mail/MailListTab;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/android/mail/MailListTab;->canReloadMail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/android/mail/MailListTab;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccountListChangeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/android/mail/MailListTab;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab;->mAccountListChangeObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/android/mail/MailListTab;)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccountListCursor:Landroid/database/MatrixCursor;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/android/mail/MailListTab;Landroid/database/MatrixCursor;)Landroid/database/MatrixCursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab;->mAccountListCursor:Landroid/database/MatrixCursor;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/widget/AccountListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/android/mail/MailListTab;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/SearchFilterAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mSearchAdapter:Lcom/htc/android/mail/SearchFilterAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/database/ImportantMailStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/Mailbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/MailListTab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/android/mail/MailListTab;->checkConversationTab()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/android/mail/MailListTab;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mBackGroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/MailListTab$RequestHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mRequestHandler:Lcom/htc/android/mail/MailListTab$RequestHandler;

    return-object v0
.end method

.method private addUpdateGroupNumCountMessage(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 1402
    sget-boolean v0, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailListTab"

    const-string v1, "addUpdateGroupCountMessage"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mBackGroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mUpdateGroupCountRunnable:Lcom/htc/android/mail/MailListTab$UpdateGroupCountRunnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1404
    return-void
.end method

.method private addUpdateTabUnreadNumberMessage(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 1416
    sget-boolean v0, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailListTab"

    const-string v1, "addUpdateUnreadNumberMessage"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mBackGroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mUpdateTabUnreadRunnable:Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1418
    return-void
.end method

.method private canReloadMail()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1425
    iget-boolean v4, p0, Lcom/htc/android/mail/MailListTab;->mIsInForeground:Z

    if-nez v4, :cond_1

    .line 1434
    :cond_0
    :goto_0
    return v3

    .line 1429
    :cond_1
    const/16 v2, 0xbb8

    .line 1430
    .local v2, requery_interval:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1431
    .local v0, currentTime:J
    iget-wide v4, p0, Lcom/htc/android/mail/MailListTab;->mUpdateTime:J

    sub-long v4, v0, v4

    int-to-long v6, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1432
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private checkConversationTab()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 652
    const-string v2, "content://com.htc.android.mail.MailCarousel/tasks"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 653
    .local v1, taskUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "gId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 655
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 657
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 658
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v2, "task_tag = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'tab_thread\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_host = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 664
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 665
    iput-boolean v11, p0, Lcom/htc/android/mail/MailListTab;->mIsConversationTabExist:Z

    .line 669
    :goto_0
    if-eqz v6, :cond_0

    .line 670
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 671
    const/4 v6, 0x0

    .line 673
    :cond_0
    return-void

    .line 667
    :cond_1
    iput-boolean v10, p0, Lcom/htc/android/mail/MailListTab;->mIsConversationTabExist:Z

    goto :goto_0
.end method

.method private doUpdateDropList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 482
    sget-boolean v0, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailListTab"

    const-string v1, "doUpdateDropList>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;

    if-nez v0, :cond_1

    .line 484
    new-instance v0, Lcom/htc/android/mail/widget/AccountListAdapter;

    invoke-direct {v0, v2, p0}, Lcom/htc/android/mail/widget/AccountListAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mLoadAccountListTask:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mLoadAccountListTask:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mLoadAccountListTask:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->cancel(Z)Z

    .line 488
    iput-object v2, p0, Lcom/htc/android/mail/MailListTab;->mLoadAccountListTask:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    .line 489
    sget-boolean v0, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MailListTab"

    const-string v1, "cancel early task>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_2
    new-instance v0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;-><init>(Lcom/htc/android/mail/MailListTab;Lcom/htc/android/mail/MailListTab$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mLoadAccountListTask:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    .line 493
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mLoadAccountListTask:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 494
    return-void
.end method

.method private getSearchFilterDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1707
    new-instance v1, Lcom/htc/android/mail/SearchFilterAdapter;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/android/mail/SearchFilterAdapter;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/Long;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailListTab;->mSearchAdapter:Lcom/htc/android/mail/SearchFilterAdapter;

    .line 1708
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0345

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mSearchAdapter:Lcom/htc/android/mail/SearchFilterAdapter;

    invoke-virtual {v1, v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0291

    new-instance v3, Lcom/htc/android/mail/MailListTab$16;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/MailListTab$16;-><init>(Lcom/htc/android/mail/MailListTab;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 1726
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1727
    return-object v0
.end method

.method private initTab()V
    .locals 62

    .prologue
    .line 269
    const v2, 0x7f03004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/MailListTab;->setContentView(I)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailListTab;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    .line 272
    const v2, 0x1020013

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/MailListTab;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/MailListTab;->mTab:Landroid/view/View;

    .line 275
    new-instance v9, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    invoke-direct {v9, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 276
    .local v9, receivedBoxIntent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/mail/MailList;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 277
    const-string v2, "TAB_NAME"

    const-string v3, "tab_inbox"

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v2, "mailboxId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v9, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v3, "tab_inbox"

    const v5, 0x7f0b01cf

    const v6, 0x2080313

    const v7, 0x2080312

    const v8, 0x20803a3

    const/16 v10, 0x65

    move-object/from16 v4, p0

    invoke-virtual/range {v2 .. v10}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 292
    new-instance v17, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 293
    .local v17, conversationBoxIntent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/mail/MailList;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 294
    const-string v2, "TAB_NAME"

    const-string v3, "tab_thread"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v2, "mailboxId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 297
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v11, "tab_thread"

    const v13, 0x7f0b0052

    const v14, 0x208043c

    const v15, 0x208043b

    const v16, 0x20803c6

    move-object/from16 v12, p0

    invoke-virtual/range {v10 .. v17}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/htc/android/mail/Mail;->sEnableGroupMail:Z

    if-eqz v2, :cond_5

    .line 308
    new-instance v25, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 309
    .local v25, groupBoxIntent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/mail/MailList;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 310
    const-string v2, "TAB_NAME"

    const-string v3, "tab_groups"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v2, "mailboxId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    move-object/from16 v18, v0

    const-string v19, "tab_groups"

    const v21, 0x7f0b0057

    const v22, 0x2080315

    const v23, 0x2080314

    const v24, 0x20803a4

    move-object/from16 v20, p0

    invoke-virtual/range {v18 .. v25}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    .line 333
    :goto_1
    new-instance v33, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    move-object/from16 v0, v33

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 334
    .local v33, unreadBoxIntent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/mail/MailList;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 335
    const-string v2, "TAB_NAME"

    const-string v3, "tab_unread"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v2, "mailboxId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    move-object/from16 v26, v0

    const-string v27, "tab_unread"

    const v29, 0x7f0b01d0

    const v30, 0x208044c

    const v31, 0x208044b

    const v32, 0x20803cd

    const/16 v34, 0x64

    move-object/from16 v28, p0

    invoke-virtual/range {v26 .. v34}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/Account;->containsExchange(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 346
    :cond_1
    new-instance v41, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    move-object/from16 v0, v41

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 347
    .local v41, markBoxIntent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/mail/MailList;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 348
    const-string v2, "TAB_NAME"

    const-string v3, "tab_mark"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v2, "mailboxId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    move-object/from16 v34, v0

    const-string v35, "tab_mark"

    const v37, 0x7f0b0055

    const v38, 0x20802a4

    const v39, 0x20802a3

    const v40, 0x208038a

    const/16 v42, 0x64

    move-object/from16 v36, p0

    invoke-virtual/range {v34 .. v42}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 358
    .end local v41           #markBoxIntent:Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/Account;->containsExchange(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 359
    :cond_3
    new-instance v49, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    move-object/from16 v0, v49

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 360
    .local v49, meetingBoxIntent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/mail/MailList;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 361
    const-string v2, "TAB_NAME"

    const-string v3, "tab_meeting"

    move-object/from16 v0, v49

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v2, "mailboxId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, v49

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    move-object/from16 v42, v0

    const-string v43, "tab_meeting"

    const v45, 0x7f0b0058

    const v46, 0x2080305

    const v47, 0x2080304

    const v48, 0x208039e

    move-object/from16 v44, p0

    invoke-virtual/range {v42 .. v49}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    .line 371
    .end local v49           #meetingBoxIntent:Landroid/content/Intent;
    :cond_4
    new-instance v57, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    move-object/from16 v0, v57

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 372
    .local v57, attachIntent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/mail/MailList;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 373
    const-string v2, "TAB_NAME"

    const-string v3, "tab_attach"

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v2, "mailboxId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, v57

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    move-object/from16 v50, v0

    const-string v51, "tab_attach"

    const v53, 0x7f0b0056

    const v54, 0x2080206

    const v55, 0x2080205

    const v56, 0x2080379

    const/16 v58, 0x64

    move-object/from16 v52, p0

    invoke-virtual/range {v50 .. v58}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 381
    new-instance v60, Lcom/htc/android/mail/MailListTab$1;

    move-object/from16 v0, v60

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailListTab$1;-><init>(Lcom/htc/android/mail/MailListTab;)V

    .line 390
    .local v60, genericSqlWhereGetter:Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x0

    new-instance v4, Lcom/htc/android/mail/MailList$BasicTabInfo;

    invoke-direct {v4}, Lcom/htc/android/mail/MailList$BasicTabInfo;-><init>()V

    aput-object v4, v2, v3

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mBaseUri:Landroid/net/Uri;

    const-string v4, "default"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUri:Landroid/net/Uri;

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mSearchBaseUri:Landroid/net/Uri;

    const-string v4, "default"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mSearchUri:Landroid/net/Uri;

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "tab_inbox"

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/MailList$BasicTabInfo;->setGenericSqlWhereGetter(Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x2

    new-instance v4, Lcom/htc/android/mail/MailListTab$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/android/mail/MailListTab$2;-><init>(Lcom/htc/android/mail/MailListTab;)V

    aput-object v4, v2, v3

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mBaseUri:Landroid/net/Uri;

    const-string v4, "default"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUri:Landroid/net/Uri;

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mSearchBaseUri:Landroid/net/Uri;

    const-string v4, "default"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mSearchUri:Landroid/net/Uri;

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const-string v3, "tab_thread"

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/MailList$BasicTabInfo;->setGenericSqlWhereGetter(Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x3

    new-instance v4, Lcom/htc/android/mail/MailList$BasicTabInfo;

    invoke-direct {v4}, Lcom/htc/android/mail/MailList$BasicTabInfo;-><init>()V

    aput-object v4, v2, v3

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mBaseUri:Landroid/net/Uri;

    const-string v4, "markStar"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUri:Landroid/net/Uri;

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mSearchBaseUri:Landroid/net/Uri;

    const-string v4, "markStar"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mSearchUri:Landroid/net/Uri;

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const-string v3, "tab_mark"

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/MailList$BasicTabInfo;->setGenericSqlWhereGetter(Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x4

    new-instance v4, Lcom/htc/android/mail/MailList$BasicTabInfo;

    invoke-direct {v4}, Lcom/htc/android/mail/MailList$BasicTabInfo;-><init>()V

    aput-object v4, v2, v3

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mBaseUri:Landroid/net/Uri;

    const-string v4, "attach"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUri:Landroid/net/Uri;

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mSearchBaseUri:Landroid/net/Uri;

    const-string v4, "attach"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mSearchUri:Landroid/net/Uri;

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const-string v3, "tab_attach"

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/MailList$BasicTabInfo;->setGenericSqlWhereGetter(Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x7

    new-instance v4, Lcom/htc/android/mail/MailListTab$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/android/mail/MailListTab$3;-><init>(Lcom/htc/android/mail/MailListTab;)V

    aput-object v4, v2, v3

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mBaseUri:Landroid/net/Uri;

    const-string v4, "default"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUri:Landroid/net/Uri;

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mSearchBaseUri:Landroid/net/Uri;

    const-string v4, "default"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mSearchUri:Landroid/net/Uri;

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    const-string v3, "tab_important"

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/MailList$BasicTabInfo;->setGenericSqlWhereGetter(Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/16 v3, 0x8

    new-instance v4, Lcom/htc/android/mail/MailListTab$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/android/mail/MailListTab$4;-><init>(Lcom/htc/android/mail/MailListTab;)V

    aput-object v4, v2, v3

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mBaseUri:Landroid/net/Uri;

    const-string v4, "groupParent"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUri:Landroid/net/Uri;

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mSearchBaseUri:Landroid/net/Uri;

    const-string v4, "groupParent"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mSearchUri:Landroid/net/Uri;

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    const-string v3, "tab_groups"

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/MailList$BasicTabInfo;->setGenericSqlWhereGetter(Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x5

    new-instance v4, Lcom/htc/android/mail/MailList$BasicTabInfo;

    invoke-direct {v4}, Lcom/htc/android/mail/MailList$BasicTabInfo;-><init>()V

    aput-object v4, v2, v3

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mBaseUri:Landroid/net/Uri;

    const-string v4, "unread"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUri:Landroid/net/Uri;

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mSearchBaseUri:Landroid/net/Uri;

    const-string v4, "unread"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mSearchUri:Landroid/net/Uri;

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v3, "tab_unread"

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/MailList$BasicTabInfo;->setGenericSqlWhereGetter(Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x6

    new-instance v4, Lcom/htc/android/mail/MailList$BasicTabInfo;

    invoke-direct {v4}, Lcom/htc/android/mail/MailList$BasicTabInfo;-><init>()V

    aput-object v4, v2, v3

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mBaseUri:Landroid/net/Uri;

    const-string v4, "meeting"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUri:Landroid/net/Uri;

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mSearchBaseUri:Landroid/net/Uri;

    const-string v4, "meeting"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mSearchUri:Landroid/net/Uri;

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    const-string v3, "tab_meeting"

    iput-object v3, v2, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    move-object/from16 v0, v60

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/MailList$BasicTabInfo;->setGenericSqlWhereGetter(Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;)V

    .line 473
    return-void

    .line 302
    .end local v25           #groupBoxIntent:Landroid/content/Intent;
    .end local v33           #unreadBoxIntent:Landroid/content/Intent;
    .end local v57           #attachIntent:Landroid/content/Intent;
    .end local v60           #genericSqlWhereGetter:Lcom/htc/android/mail/MailList$BasicTabInfo$GenericSqlWhereGetter;
    :catch_0
    move-exception v59

    .line 303
    .local v59, e:Ljava/lang/Exception;
    sget-boolean v2, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailListTab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add conversation tab fail>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 318
    .end local v59           #e:Ljava/lang/Exception;
    :cond_5
    new-instance v25, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 319
    .restart local v25       #groupBoxIntent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/mail/MailList;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 320
    const-string v2, "TAB_NAME"

    const-string v3, "tab_important"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v2, "mailboxId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v3, v3, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailListTab;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getContactGroup()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v61

    .line 323
    .local v61, label:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    move-object/from16 v18, v0

    const-string v19, "tab_important"

    const v21, 0x7f0b004c

    const v22, 0x2080315

    const v23, 0x2080314

    const v24, 0x20803a4

    move-object/from16 v20, p0

    invoke-virtual/range {v18 .. v25}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private removeUpdateGroupNumCountMessage()V
    .locals 2

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mBackGroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mUpdateGroupCountRunnable:Lcom/htc/android/mail/MailListTab$UpdateGroupCountRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1408
    return-void
.end method

.method private removeUpdateTabUnreadNumberMessage()V
    .locals 2

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mBackGroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mUpdateTabUnreadRunnable:Lcom/htc/android/mail/MailListTab$UpdateTabUnreadRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1422
    return-void
.end method

.method private setAccount(J)Lcom/htc/android/mail/Account;
    .locals 3
    .parameter "id"

    .prologue
    .line 228
    iget-wide v0, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    .line 229
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 232
    sget-boolean v0, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailListTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account deleting>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/htc/android/mail/Util;->writeAccountCountToPref(Landroid/content/Context;I)V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    goto :goto_0
.end method

.method private setFooterBar()V
    .locals 4

    .prologue
    .line 248
    const v0, 0x7f090113

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailListTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterBarArea:Landroid/widget/FrameLayout;

    .line 250
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v2

    iget-wide v2, v2, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterBarArea:Landroid/widget/FrameLayout;

    const v1, 0x7f090114

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 263
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterButton2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 265
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterButton2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v1, 0x7f0b0151

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 266
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterBarArea:Landroid/widget/FrameLayout;

    const v1, 0x7f090115

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    .line 258
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterBar:Lcom/htc/android/mail/widget/AbstractMailFooterBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/AbstractMailFooterBar;->getButton(I)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterButton3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 259
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterButton3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    const v1, 0x7f0b014a

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    goto :goto_0
.end method

.method private setTitleBar()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1117
    const v1, 0x7f09019c

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailListTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/widget/MailActionBar;

    iput-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    .line 1118
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/widget/MailActionBar;->setVisibility(I)V

    .line 1120
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;

    if-nez v1, :cond_0

    .line 1121
    new-instance v1, Lcom/htc/android/mail/widget/AccountListAdapter;

    invoke-direct {v1, v2, p0}, Lcom/htc/android/mail/widget/AccountListAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailListTab;->mAccountListAdapter:Lcom/htc/android/mail/widget/AccountListAdapter;

    .line 1123
    :cond_0
    new-instance v1, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    invoke-direct {v1, p0, v2}, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;-><init>(Lcom/htc/android/mail/MailListTab;Lcom/htc/android/mail/MailListTab$1;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailListTab;->mLoadAccountListTask:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    .line 1124
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mLoadAccountListTask:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1126
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarDropDown;->setBubbleVisibility(I)V

    .line 1127
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    new-instance v2, Lcom/htc/android/mail/MailListTab$11;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailListTab$11;-><init>(Lcom/htc/android/mail/MailListTab;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1135
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableAccountListColorIcon()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1136
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 1137
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, provider:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarDropDown;->setFrontImageVisibility(I)V

    .line 1140
    const-string v1, "Yahoo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1141
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    const v2, 0x7f020046

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setFrontImageResource(I)V

    .line 1163
    .end local v0           #provider:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->setAccountLabel()V

    .line 1165
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1166
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1167
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f0b034b

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1168
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton:Lcom/htc/widget/HeaderBarImage;

    new-instance v2, Lcom/htc/android/mail/MailListTab$12;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailListTab$12;-><init>(Lcom/htc/android/mail/MailListTab;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1176
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton2:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1177
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton2:Lcom/htc/widget/HeaderBarImage;

    const v2, 0x7f0b031a

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 1178
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mRightButton2:Lcom/htc/widget/HeaderBarImage;

    new-instance v2, Lcom/htc/android/mail/MailListTab$13;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailListTab$13;-><init>(Lcom/htc/android/mail/MailListTab;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1184
    return-void

    .line 1142
    .restart local v0       #provider:Ljava/lang/String;
    :cond_1
    const-string v1, "AOL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1143
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    const v2, 0x7f02002e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setFrontImageResource(I)V

    goto :goto_0

    .line 1144
    :cond_2
    const-string v1, "MSN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1145
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    const v2, 0x7f020040

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setFrontImageResource(I)V

    goto :goto_0

    .line 1146
    :cond_3
    const-string v1, "Google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1147
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    const v2, 0x7f02003f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setFrontImageResource(I)V

    goto/16 :goto_0

    .line 1149
    :cond_4
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarDropDown;->setFrontImageVisibility(I)V

    goto/16 :goto_0

    .line 1152
    .end local v0           #provider:Ljava/lang/String;
    :cond_5
    const-string v1, "Verizon"

    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1153
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarDropDown;->setFrontImageVisibility(I)V

    .line 1154
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarDropDown;->setFrontImageResource(I)V

    goto/16 :goto_0

    .line 1156
    :cond_6
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarDropDown;->setFrontImageVisibility(I)V

    goto/16 :goto_0

    .line 1160
    :cond_7
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarDropDown;->setFrontImageVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateLastAccountEnter()V
    .locals 4

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mContext:Landroid/content/Context;

    const-string v2, "account"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1111
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "LAST_ACCOUNT_ENTER"

    iget-wide v2, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1113
    return-void
.end method

.method private updateTabUnreadNumberView(I)V
    .locals 3
    .parameter "num"

    .prologue
    const/4 v2, 0x7

    .line 1220
    if-lez p1, :cond_1

    .line 1221
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    const-string v1, "99+"

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/MailListTab;->setTabCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1226
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/MailListTab;->setTabCountVisibility(Ljava/lang/String;Z)V

    .line 1231
    :goto_1
    return-void

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/MailListTab;->setTabCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1228
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/MailListTab;->setTabCountVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method protected BackToLastTab()V
    .locals 4

    .prologue
    .line 1081
    iget v0, p0, Lcom/htc/android/mail/MailListTab;->lastTabID:I

    .line 1082
    .local v0, tabId:I
    packed-switch v0, :pswitch_data_0

    .line 1105
    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/MailListTab;->lastTabID:I

    .line 1106
    sget-boolean v1, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailListTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackToLastTab>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/MailListTab;->lastTabID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_0
    return-void

    .line 1084
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "tab_inbox"

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "tab_mark"

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 1090
    :pswitch_3
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "tab_attach"

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 1093
    :pswitch_4
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "tab_unread"

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 1096
    :pswitch_5
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "tab_meeting"

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 1099
    :pswitch_6
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "tab_important"

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 1102
    :pswitch_7
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v2, "tab_groups"

    invoke-virtual {v1, v2}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 1082
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public containsTab(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mRegisteredTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 603
    sget-boolean v2, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailListTab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchKeyEvent: action> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mFooterBarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 605
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_1

    .line 606
    const-string v2, "MailListTab"

    const-string v3, "skip left>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :goto_0
    return v1

    .line 609
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_2

    .line 610
    const-string v2, "MailListTab"

    const-string v3, "skip right>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 618
    iget-boolean v2, p0, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-eqz v2, :cond_4

    const-string v2, ""

    iget-object v3, p0, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 619
    sget-boolean v2, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "MailListTab"

    const-string v3, "exit mail search"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_3
    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v2, v5}, Lcom/htc/android/mail/AbsRequestController;->broadcastMailSearch(Z)V

    goto :goto_0

    .line 626
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 627
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/mail/MailListTab$5;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailListTab$5;-><init>(Lcom/htc/android/mail/MailListTab;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 634
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_6

    .line 637
    iget-boolean v1, p0, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 638
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v1}, Lcom/htc/android/mail/AbsRequestController;->broadcastShowMenu()V

    .line 642
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_7

    .line 643
    iget-boolean v1, p0, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-eqz v1, :cond_7

    .line 644
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 645
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 648
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_7
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method protected editTab()V
    .locals 0

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->enterEditMode()V

    .line 1579
    return-void
.end method

.method protected getCmdBarButton1Text()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v0}, Lcom/htc/android/mail/widget/MailFooterBarButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getConversactionTabExist()Z
    .locals 1

    .prologue
    .line 1731
    iget-boolean v0, p0, Lcom/htc/android/mail/MailListTab;->mIsConversationTabExist:Z

    return v0
.end method

.method protected getGroupNumCount(JLjava/lang/String;)I
    .locals 5
    .parameter "accountId"
    .parameter "group"

    .prologue
    const/4 v2, 0x0

    .line 1455
    iget-object v3, p0, Lcom/htc/android/mail/MailListTab;->mGroupNumCount:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v3

    .line 1456
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/MailListTab;->mGroupNumCount:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v4, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1457
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    monitor-exit v3

    .line 1460
    :goto_0
    return v2

    .line 1458
    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1459
    .local v0, count:Ljava/lang/Integer;
    if-nez v0, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 1461
    .end local v0           #count:Ljava/lang/Integer;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1460
    .restart local v0       #count:Ljava/lang/Integer;
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mTab:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method protected initSearchBar()V
    .locals 2

    .prologue
    .line 1187
    const v0, 0x7f090196

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailListTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/MailSearchBar;

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    .line 1189
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    if-nez v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mStubMailListSearchBar:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 1191
    const v0, 0x7f09019d

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailListTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mStubMailListSearchBar:Landroid/view/ViewStub;

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mStubMailListSearchBar:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/MailSearchBar;

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    .line 1196
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v0, v0, Lcom/htc/android/mail/widget/MailSearchBar;->mLeftImage:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1197
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v0, v0, Lcom/htc/android/mail/widget/MailSearchBar;->mLeftImage:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1198
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v0, v0, Lcom/htc/android/mail/widget/MailSearchBar;->mLeftImage:Lcom/htc/widget/HeaderBarImage;

    new-instance v1, Lcom/htc/android/mail/MailListTab$14;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailListTab$14;-><init>(Lcom/htc/android/mail/MailListTab;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1205
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v0, v0, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    new-instance v1, Lcom/htc/android/mail/MailListTab$15;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailListTab$15;-><init>(Lcom/htc/android/mail/MailListTab;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarInput;->setClearIconListener(Landroid/view/View$OnClickListener;)V

    .line 1216
    return-void
.end method

.method public isFirstLoadedTab(Ljava/lang/String;)Z
    .locals 2
    .parameter "tab"

    .prologue
    const/4 v0, 0x0

    .line 1374
    if-nez p1, :cond_1

    .line 1376
    :cond_0
    :goto_0
    return v0

    .line 1375
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mFirstLoadedTab:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 1338
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1339
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "common_app_bkg"

    const v5, 0x20806b7

    invoke-static {p0, v4, v5}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1341
    iget-object v3, p0, Lcom/htc/android/mail/MailListTab;->mWeakHandlerSet:Ljava/util/Set;

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

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1342
    .local v2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MailRequestHandler;

    .line 1343
    .local v0, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v0, :cond_0

    .line 1344
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/MailRequestHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1347
    .end local v0           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v2           #weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 692
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    .line 693
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "MailListTab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", taskId>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getTaskId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-wide/32 v10, 0x100000

    invoke-static {v9, v10, v11}, Lcom/htc/android/mail/MailCommon;->isDataStorageFull(Landroid/content/Context;J)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 696
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 697
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 698
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/htc/android/mail/dialog/StorageFullDialog;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 699
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailListTab;->startActivity(Landroid/content/Intent;)V

    .line 700
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->finish()V

    .line 881
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 704
    :cond_2
    const/4 v0, 0x0

    .line 705
    .local v0, accountCount:I
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/Util;->getAccountCountPref(Landroid/content/Context;)I

    move-result v0

    .line 706
    if-nez v0, :cond_4

    .line 707
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 708
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "MailListTab"

    const-string v10, "[ATS][com.htc.android.mail][press_widget][launch]"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v2, intent:Landroid/content/Intent;
    const-class v9, Lcom/htc/android/mail/ProviderListScreen;

    invoke-virtual {v2, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 711
    const/high16 v9, 0x400

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 712
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailListTab;->startActivity(Landroid/content/Intent;)V

    .line 713
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->finish()V

    goto :goto_0

    .line 717
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getIntent()Landroid/content/Intent;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    .line 718
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    const-string v10, "dont_set_last_acct_entry"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/android/mail/MailListTab;->mNoSetLastEntryAcct:Z

    .line 719
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    .line 720
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    if-nez v9, :cond_d

    .line 721
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "MailListTab"

    const-string v10, "mUri> null"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_5
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    const-string v10, "accountId"

    const-wide/16 v11, -0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    .line 726
    iget-wide v9, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_6

    .line 727
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getLastAccountEnterId()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    .line 728
    iget-wide v9, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_c

    .line 729
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/AccountPool;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    .line 730
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "MailListTab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " mAccountId default>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_6
    :goto_1
    sget-object v9, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    .line 746
    :goto_2
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    const-string v10, "GO_TO_TAB"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;

    .line 747
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    const-string v10, "fromCalendarApp"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/android/mail/MailListTab;->fromCalendarApp:Z

    .line 748
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "MailListTab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fromCalendarApp>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/android/mail/MailListTab;->fromCalendarApp:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_7
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;

    const-string v10, "tab_meeting"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lcom/htc/android/mail/MailListTab;->fromCalendarApp:Z

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    if-le v0, v9, :cond_8

    .line 753
    const-wide v9, 0x7fffffffffffffffL

    iput-wide v9, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    .line 754
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://mail/accounts/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    .line 755
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "MailListTab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Meeting force to all account>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_8
    const/4 v3, 0x0

    .line 759
    .local v3, isDefaultAccount:Z
    iget-wide v9, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-direct {p0, v9, v10}, Lcom/htc/android/mail/MailListTab;->setAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    .line 761
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    .line 762
    :cond_9
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_a

    const-string v9, "MailListTab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setAccouont fail>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_a
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    const-string v10, "shortcut"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    .line 766
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_b

    const-string v9, "MailListTab"

    const-string v10, "calling from shorcut, but account does not exist"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :cond_b
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 768
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    const-class v10, Lcom/htc/android/mail/activity/MailShortcutNoAcctActivity;

    invoke-virtual {v9, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 769
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    iget-object v10, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 770
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailListTab;->startActivity(Landroid/content/Intent;)V

    .line 771
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->finish()V

    goto/16 :goto_0

    .line 732
    .end local v3           #isDefaultAccount:Z
    :cond_c
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "MailListTab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " mAccountId last enter>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 737
    :cond_d
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_e

    const-string v9, "MailListTab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUri not null>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_e
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 739
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 740
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->finish()V

    goto/16 :goto_0

    .line 743
    :cond_f
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    goto/16 :goto_2

    .line 774
    .restart local v3       #isDefaultAccount:Z
    :cond_10
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_11

    const-string v9, "MailListTab"

    const-string v10, "try to get default account again, since the last accountId may be fake>"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_11
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/AccountPool;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    .line 776
    sget-object v9, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    .line 777
    iget-wide v9, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-direct {p0, v9, v10}, Lcom/htc/android/mail/MailListTab;->setAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    .line 778
    const/4 v3, 0x1

    .line 779
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    .line 780
    :cond_12
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 781
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lcom/htc/android/mail/Util;->writeAccountCountToPref(Landroid/content/Context;I)V

    .line 782
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->finish()V

    .line 783
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 784
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v9, Lcom/htc/android/mail/ProviderListScreen;

    invoke-virtual {v2, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 785
    const/high16 v9, 0x400

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 786
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/MailListTab;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 792
    .end local v2           #intent:Landroid/content/Intent;
    :cond_13
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailListTab;->setGId(Ljava/lang/String;)V

    .line 793
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 795
    iput-object p0, p0, Lcom/htc/android/mail/MailListTab;->mContext:Landroid/content/Context;

    .line 796
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/MailListTab;->requestWindowFeature(I)Z

    .line 799
    const/16 v9, 0x3e

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v9, v10, :cond_14

    const/16 v9, 0xd2

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v10, :cond_14

    .line 801
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070021

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    sput v9, Lcom/htc/android/mail/MailCommon;->COLOR_DEFAULT_ITEM_READ:I

    .line 802
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07003b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    sput v9, Lcom/htc/android/mail/MailCommon;->COLOR_SKT_ITEM_READ:I

    .line 805
    :cond_14
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    const-string v10, "ExpandMailId"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->Expand_groupId:Ljava/lang/String;

    .line 806
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    const-string v10, "MailTabGroupAccount"

    const-wide/16 v11, -0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/htc/android/mail/MailListTab;->Expand_group_Account:J

    .line 807
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_15

    const-string v9, "MailListTab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expand_groupId>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/htc/android/mail/MailListTab;->Expand_group_Account:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/MailListTab;->Expand_groupId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_15
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    const-string v10, "showNetworkDlgOnce"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 810
    .local v8, showNetWorkDlg:Z
    if-eqz v8, :cond_16

    .line 811
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/android/mail/MailListTab;->showNetworkWarning:Z

    .line 814
    :cond_16
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mIntent:Landroid/content/Intent;

    const-string v10, "mailboxId"

    const-wide/16 v11, -0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 815
    .local v6, reqMailboxId:J
    const-wide/16 v9, -0x1

    cmp-long v9, v6, v9

    if-eqz v9, :cond_17

    if-eqz v3, :cond_1d

    .line 817
    :cond_17
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v10}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/htc/android/mail/Util;->getAccountLastAccessMailboxId(Landroid/content/Context;J)J

    move-result-wide v4

    .line 818
    .local v4, lastId:J
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_18

    const-string v9, "MailListTab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "try last access mailbox :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    :cond_18
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 820
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v9, :cond_19

    .line 821
    const-string v9, "MailListTab"

    const-string v10, "change to get default mailbox"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 832
    .end local v4           #lastId:J
    :cond_19
    :goto_3
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_1a

    const-string v9, "MailListTab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uri: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/MailListTab;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", requMailboxId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_1a
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_1b

    const-string v9, "MailListTab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "account id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mailboxId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v11, v11, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_1b
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v9

    iget-object v11, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v11, v11, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mBaseUri:Landroid/net/Uri;

    .line 836
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v9

    iget-object v11, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v11, v11, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/MailCommon;->getMessagesUri(JJ)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mSearchBaseUri:Landroid/net/Uri;

    .line 838
    new-instance v9, Lcom/htc/android/mail/MailListTab$RequestHandler;

    invoke-direct {v9, p0, p0}, Lcom/htc/android/mail/MailListTab$RequestHandler;-><init>(Landroid/content/Context;Lcom/htc/android/mail/MailListTab;)V

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mRequestHandler:Lcom/htc/android/mail/MailListTab$RequestHandler;

    .line 839
    new-instance v9, Ljava/lang/ref/WeakReference;

    iget-object v10, p0, Lcom/htc/android/mail/MailListTab;->mRequestHandler:Lcom/htc/android/mail/MailListTab$RequestHandler;

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 842
    invoke-static {p0}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 843
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v10, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v11, p0, Lcom/htc/android/mail/MailListTab;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9, v10, v11}, Lcom/htc/android/mail/AbsRequestController;->registerWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 845
    invoke-direct {p0}, Lcom/htc/android/mail/MailListTab;->initTab()V

    .line 846
    invoke-direct {p0}, Lcom/htc/android/mail/MailListTab;->setTitleBar()V

    .line 847
    invoke-direct {p0}, Lcom/htc/android/mail/MailListTab;->setFooterBar()V

    .line 849
    sget-boolean v9, Lcom/htc/android/mail/Mail;->sEnableGroupMail:Z

    if-eqz v9, :cond_1e

    .line 850
    invoke-static {p0}, Lcom/htc/android/mail/database/GroupMailStore;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/database/GroupMailStore;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    .line 858
    :goto_4
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;

    .line 859
    new-instance v9, Lcom/htc/android/mail/MailListTab$SummaryContentObserver;

    invoke-direct {v9, p0}, Lcom/htc/android/mail/MailListTab$SummaryContentObserver;-><init>(Lcom/htc/android/mail/MailListTab;)V

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mSummaryContentObserver:Lcom/htc/android/mail/MailListTab$SummaryContentObserver;

    .line 860
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v10, p0, Lcom/htc/android/mail/MailListTab;->mBaseUri:Landroid/net/Uri;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/android/mail/MailListTab;->mSummaryContentObserver:Lcom/htc/android/mail/MailListTab$SummaryContentObserver;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 861
    new-instance v9, Lcom/htc/android/mail/MailListTab$UpdateContentObserver;

    invoke-direct {v9, p0}, Lcom/htc/android/mail/MailListTab$UpdateContentObserver;-><init>(Lcom/htc/android/mail/MailListTab;)V

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mUpdateContentObserver:Lcom/htc/android/mail/MailListTab$UpdateContentObserver;

    .line 862
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/htc/android/mail/MailProvider;->sSummariesReadURI:Landroid/net/Uri;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/android/mail/MailListTab;->mUpdateContentObserver:Lcom/htc/android/mail/MailListTab$UpdateContentObserver;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 864
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/htc/android/mail/MailProvider;->sSummariesMoveMailURI:Landroid/net/Uri;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/android/mail/MailListTab;->mUpdateContentObserver:Lcom/htc/android/mail/MailListTab$UpdateContentObserver;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 866
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/htc/android/mail/MailProvider;->sSummariesDeleteMailURI:Landroid/net/Uri;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/android/mail/MailListTab;->mUpdateContentObserver:Lcom/htc/android/mail/MailListTab$UpdateContentObserver;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 868
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/htc/android/mail/MailProvider;->sSummariesMarkStarURI:Landroid/net/Uri;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/android/mail/MailListTab;->mUpdateContentObserver:Lcom/htc/android/mail/MailListTab$UpdateContentObserver;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 872
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 873
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 874
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getWindow()Landroid/view/Window;

    move-result-object v9

    const-string v10, "common_app_bkg"

    const v11, 0x20806b7

    invoke-static {p0, v10, v11}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 876
    iget-boolean v9, p0, Lcom/htc/android/mail/MailListTab;->mNoSetLastEntryAcct:Z

    if-nez v9, :cond_1c

    .line 877
    invoke-direct {p0}, Lcom/htc/android/mail/MailListTab;->updateLastAccountEnter()V

    .line 880
    :cond_1c
    sget-boolean v9, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "MailListTab"

    const-string v10, "onCreate<<"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 825
    :cond_1d
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 826
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    if-nez v9, :cond_19

    .line 827
    const-string v9, "MailListTab"

    const-string v10, "change to get default mailbox"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    goto/16 :goto_3

    .line 852
    :cond_1e
    invoke-static {p0}, Lcom/htc/android/mail/database/ImportantMailStore;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/database/ImportantMailStore;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/mail/MailListTab;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    .line 853
    iget-object v9, p0, Lcom/htc/android/mail/MailListTab;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    iget-object v10, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v10}, Lcom/htc/android/mail/Account;->getContactGroup()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/database/ImportantMailStore;->changeGroup(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 188
    sget-boolean v0, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailListTab"

    const-string v1, "onCreateDialog>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 204
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 191
    :sswitch_0
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->showNetworkWarning:Z

    .line 192
    sget-boolean v0, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailListTab"

    const-string v1, "progress_small>>2"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    invoke-static {p1, p0}, Lcom/htc/android/mail/MailCommon;->getDialog(ILandroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 196
    :sswitch_1
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->showNetworkWarning:Z

    .line 197
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b005a

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailListTab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0291

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 202
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/android/mail/MailListTab;->getSearchFilterDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x12 -> :sswitch_2
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "currentTab"

    .prologue
    .line 476
    const-string v0, "tab_unread"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailListTab;->mClearReadMessageIds:Z

    .line 479
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1020
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onDestroy()V

    .line 1021
    sget-boolean v1, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailListTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", taskId>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/MailListTab;->removeUpdateGroupNumCountMessage()V

    .line 1024
    invoke-direct {p0}, Lcom/htc/android/mail/MailListTab;->removeUpdateTabUnreadNumberMessage()V

    .line 1026
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_2

    .line 1027
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mSummaryContentObserver:Lcom/htc/android/mail/MailListTab$SummaryContentObserver;

    if-eqz v1, :cond_1

    .line 1028
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mSummaryContentObserver:Lcom/htc/android/mail/MailListTab$SummaryContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1029
    iput-object v4, p0, Lcom/htc/android/mail/MailListTab;->mSummaryContentObserver:Lcom/htc/android/mail/MailListTab$SummaryContentObserver;

    .line 1031
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mUpdateContentObserver:Lcom/htc/android/mail/MailListTab$UpdateContentObserver;

    if-eqz v1, :cond_2

    .line 1032
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mUpdateContentObserver:Lcom/htc/android/mail/MailListTab$UpdateContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1033
    iput-object v4, p0, Lcom/htc/android/mail/MailListTab;->mUpdateContentObserver:Lcom/htc/android/mail/MailListTab$UpdateContentObserver;

    .line 1037
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v1, :cond_3

    .line 1038
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/MailListTab;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController;->unregisterWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 1041
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mAccountListChangeObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mTrackMsgCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    .line 1042
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mTrackMsgCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mAccountListChangeObserver:Landroid/database/ContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1043
    iput-object v4, p0, Lcom/htc/android/mail/MailListTab;->mAccountListChangeObserver:Landroid/database/ContentObserver;

    .line 1046
    :cond_4
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mTrackMsgCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mTrackMsgCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1047
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/android/mail/MailListTab$9;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailListTab$9;-><init>(Lcom/htc/android/mail/MailListTab;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1056
    :cond_5
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mLoadAccountListTask:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    if-eqz v1, :cond_6

    .line 1057
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mLoadAccountListTask:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->cancel(Z)Z

    .line 1058
    :cond_6
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/android/mail/MailListTab$10;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailListTab$10;-><init>(Lcom/htc/android/mail/MailListTab;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1066
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailListTab;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1067
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_7

    .line 1069
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 1072
    :cond_7
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 552
    const/16 v1, 0x54

    if-ne p1, v1, :cond_1

    .line 553
    iget-boolean v1, p0, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-nez v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/AbsRequestController;->broadcastMailSearch(Z)V

    .line 567
    :goto_0
    return v0

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/AbsRequestController;->broadcastMailSearch(Z)V

    goto :goto_0

    .line 561
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 562
    iget-boolean v1, p0, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-eqz v1, :cond_2

    .line 563
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/AbsRequestController;->broadcastMailSearch(Z)V

    goto :goto_0

    .line 567
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/htc/widget/CarouselActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, -0x1

    const-wide/16 v9, -0x1

    .line 497
    sget-boolean v5, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailListTab"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNewIntent>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 499
    .local v4, uri:Landroid/net/Uri;
    if-nez v4, :cond_7

    .line 500
    sget-boolean v5, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "MailListTab"

    const-string v6, "uri null>"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_1
    const-string v5, "accountId"

    invoke-virtual {p1, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 504
    .local v0, accountId:J
    cmp-long v5, v0, v9

    if-nez v5, :cond_3

    .line 505
    sget-boolean v5, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MailListTab"

    const-string v6, "no accountId in extra data, it\'s not from notification, return>"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .end local v0           #accountId:J
    :cond_2
    :goto_0
    return-void

    .line 507
    .restart local v0       #accountId:J
    :cond_3
    const-string v5, "mailboxId"

    invoke-virtual {p1, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 509
    .local v2, reqMailboxId:J
    sget-boolean v5, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "MailListTab"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Original accountId>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mailboxId>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v7, v7, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_4
    sget-boolean v5, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "MailListTab"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent From Notification, will go to accountId>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mailboxId>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_5
    iget-object v5, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    cmp-long v5, v0, v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v5, v5, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v5, v2, v5

    if-eqz v5, :cond_2

    .line 513
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->finish()V

    .line 514
    invoke-virtual {p0, p1, v11}, Lcom/htc/android/mail/MailListTab;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 519
    .end local v0           #accountId:J
    .end local v2           #reqMailboxId:J
    :cond_7
    sget-boolean v5, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "MailListTab"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_8
    iget-object v5, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a

    .line 521
    sget-boolean v5, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "MailListTab"

    const-string v6, "finish>1"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_9
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->finish()V

    .line 523
    invoke-virtual {p0, p1, v11}, Lcom/htc/android/mail/MailListTab;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 526
    :cond_a
    const-string v5, "mailboxId"

    invoke-virtual {p1, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 527
    .restart local v2       #reqMailboxId:J
    sget-boolean v5, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v5, :cond_b

    const-string v5, "MailListTab"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reqMailboxId>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v7, v7, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_b
    cmp-long v5, v2, v9

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/htc/android/mail/MailListTab;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-wide v5, v5, Lcom/htc/android/mail/Mailbox;->id:J

    cmp-long v5, v2, v5

    if-eqz v5, :cond_d

    .line 529
    sget-boolean v5, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v5, :cond_c

    const-string v5, "MailListTab"

    const-string v6, "finish>2"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_c
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->finish()V

    .line 531
    invoke-virtual {p0, p1, v11}, Lcom/htc/android/mail/MailListTab;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 534
    :cond_d
    const-string v5, "GO_TO_TAB"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;

    .line 535
    const-string v5, "ExpandMailId"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/MailListTab;->Expand_groupId:Ljava/lang/String;

    .line 536
    const-string v5, "MailTabGroupAccount"

    invoke-virtual {p1, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/android/mail/MailListTab;->Expand_group_Account:J

    .line 537
    iget-object v5, p0, Lcom/htc/android/mail/MailListTab;->Expand_groupId:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 538
    iget-object v5, p0, Lcom/htc/android/mail/MailListTab;->Expand_groupId:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/android/mail/MailListTab;->selected_group:Ljava/lang/String;

    .line 539
    iget-wide v5, p0, Lcom/htc/android/mail/MailListTab;->Expand_group_Account:J

    iput-wide v5, p0, Lcom/htc/android/mail/MailListTab;->selected_group_account:J

    .line 540
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/android/mail/MailListTab;->mExpandConversation:Z

    .line 542
    :cond_e
    sget-boolean v5, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v5, :cond_f

    const-string v5, "MailListTab"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "goToTabString>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/MailListTab;->Expand_groupId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/android/mail/MailListTab;->Expand_group_Account:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_f
    iget-object v5, p0, Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 544
    iget-object v5, p0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    iget-object v6, p0, Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 885
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onPause()V

    .line 886
    sget-boolean v0, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailListTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :cond_0
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->mIsInForeground:Z

    .line 888
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/AbsRequestController;->removeWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 893
    :cond_1
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListTab;->mIsIMEup:Z

    .line 895
    sget-boolean v0, Lcom/htc/android/mail/Mail;->sEnableGroupMail:Z

    if-eqz v0, :cond_5

    .line 896
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/database/GroupMailStore;->unregisterWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 901
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 902
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/mail/MailListTab$AccountCommitRunnable;

    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-direct {v1, p0, v2}, Lcom/htc/android/mail/MailListTab$AccountCommitRunnable;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 905
    :cond_3
    sget-boolean v0, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MailListTab"

    const-string v1, "onPause<"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_4
    return-void

    .line 898
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/database/ImportantMailStore;->unregisterWeakHandler(Ljava/lang/ref/WeakReference;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Lcom/htc/widget/CarouselActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 210
    sget-boolean v1, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailListTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialog>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 225
    .end local p2
    :cond_1
    :goto_0
    return-void

    .line 214
    .restart local p2
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mSearchAdapter:Lcom/htc/android/mail/SearchFilterAdapter;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/SearchFilterAdapter;->readSettings(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v0

    .line 215
    .local v0, validate:Z
    iget-boolean v1, p0, Lcom/htc/android/mail/MailListTab;->mSearchFromContextMenu:Z

    if-eqz v1, :cond_2

    .line 216
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mSearchAdapter:Lcom/htc/android/mail/SearchFilterAdapter;

    invoke-virtual {v1}, Lcom/htc/android/mail/SearchFilterAdapter;->setSearchFromContextMenu()V

    .line 217
    const/4 v0, 0x1

    .line 219
    :cond_2
    if-eqz v0, :cond_1

    .line 220
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 221
    sget-boolean v1, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MailListTab"

    const-string v2, "search filter dialog validateViews"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1327
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1331
    if-eqz p1, :cond_0

    .line 1332
    const-string v0, "currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;

    .line 1334
    :cond_0
    return-void
.end method

.method protected final onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 924
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onResume()V

    .line 925
    sget-boolean v4, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MailListTab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_0
    iput-boolean v8, p0, Lcom/htc/android/mail/MailListTab;->mIsInForeground:Z

    .line 927
    invoke-static {p0}, Lcom/htc/android/mail/Util;->getAccountCountPref(Landroid/content/Context;)I

    move-result v4

    if-gtz v4, :cond_2

    .line 928
    const-string v4, "MailListTab"

    const-string v5, "resume no account>"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 930
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Lcom/htc/android/mail/ProviderListScreen;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 931
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailListTab;->startActivity(Landroid/content/Intent;)V

    .line 932
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->finish()V

    .line 1016
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 936
    :cond_2
    iget-wide v4, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-static {v4, v5}, Lcom/htc/android/mail/Account;->checkIfAccountExists(J)Z

    move-result v4

    if-nez v4, :cond_3

    .line 937
    const-string v4, "MailListTab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resume, account null>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/android/mail/MailListTab;->mAccountId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getDefaultAccountId()J

    move-result-wide v4

    invoke-static {p0, v4, v5, v9}, Lcom/htc/android/mail/MailCommon;->GotoMailListScreen(Landroid/content/Context;JZ)V

    .line 939
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->finish()V

    goto :goto_0

    .line 942
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 945
    .local v0, config:Landroid/content/res/Configuration;
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    sput-object v4, Lcom/htc/android/mail/Util;->mNowtime:Landroid/text/format/Time;

    .line 946
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    sput-object v4, Lcom/htc/android/mail/Util;->cal:Ljava/util/Calendar;

    .line 947
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    sput-object v4, Lcom/htc/android/mail/Util;->yearStart:Ljava/util/Calendar;

    .line 948
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/mail/Util;->resetMailItemExtraHeight(Landroid/content/Context;)V

    .line 950
    sget-boolean v4, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "MailListTab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeformat_24>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/htc/android/mail/MailCommon;->TimeFormat24:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_4
    iget-object v4, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v5, p0, Lcom/htc/android/mail/MailListTab;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/AbsRequestController;->addWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 954
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v4, "intent.eas.mail.priority.high"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    .local v3, syncStateIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/MailListTab;->sendBroadcast(Landroid/content/Intent;)V

    .line 957
    iget-boolean v4, p0, Lcom/htc/android/mail/MailListTab;->mTabInit:Z

    if-nez v4, :cond_a

    .line 958
    iput-boolean v8, p0, Lcom/htc/android/mail/MailListTab;->mTabInit:Z

    .line 961
    sget-boolean v4, Lcom/htc/android/mail/Mail;->sEnableGroupMail:Z

    if-eqz v4, :cond_9

    .line 962
    iget-object v4, p0, Lcom/htc/android/mail/MailListTab;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/android/mail/MailListTab;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    iget-object v5, p0, Lcom/htc/android/mail/MailListTab;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, v5, v9}, Lcom/htc/android/mail/database/GroupMailStore;->registerWeakHandler(Ljava/lang/ref/WeakReference;Z)V

    .line 967
    :cond_6
    :goto_1
    new-instance v2, Lcom/htc/android/mail/MailListTab$6;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailListTab$6;-><init>(Lcom/htc/android/mail/MailListTab;)V

    .line 982
    .local v2, run:Ljava/lang/Runnable;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 988
    iget-object v4, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4, p0}, Lcom/htc/android/mail/Account;->containsExchange(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 989
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/htc/android/mail/MailListTab$7;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/MailListTab$7;-><init>(Lcom/htc/android/mail/MailListTab;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1006
    .end local v2           #run:Ljava/lang/Runnable;
    :cond_7
    :goto_2
    iget-boolean v4, p0, Lcom/htc/android/mail/MailListTab;->mIsFirstLaunch:Z

    if-ne v4, v8, :cond_8

    .line 1007
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/android/mail/MailListTab$8;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/MailListTab$8;-><init>(Lcom/htc/android/mail/MailListTab;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1012
    iput-boolean v9, p0, Lcom/htc/android/mail/MailListTab;->mIsFirstLaunch:Z

    .line 1015
    :cond_8
    sget-boolean v4, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MailListTab"

    const-string v5, "onResume<<"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 964
    :cond_9
    iget-object v4, p0, Lcom/htc/android/mail/MailListTab;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/android/mail/MailListTab;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    iget-object v5, p0, Lcom/htc/android/mail/MailListTab;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, v5, v9}, Lcom/htc/android/mail/database/ImportantMailStore;->registerWeakHandler(Ljava/lang/ref/WeakReference;Z)V

    goto :goto_1

    .line 997
    :cond_a
    iget-boolean v4, p0, Lcom/htc/android/mail/MailListTab;->mDirty:Z

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->update()V

    .line 999
    :cond_b
    sget-boolean v4, Lcom/htc/android/mail/Mail;->sEnableGroupMail:Z

    if-eqz v4, :cond_c

    .line 1000
    iget-object v4, p0, Lcom/htc/android/mail/MailListTab;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/android/mail/MailListTab;->mGroupMailStore:Lcom/htc/android/mail/database/GroupMailStore;

    iget-object v5, p0, Lcom/htc/android/mail/MailListTab;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, v5, v8}, Lcom/htc/android/mail/database/GroupMailStore;->registerWeakHandler(Ljava/lang/ref/WeakReference;Z)V

    goto :goto_2

    .line 1002
    :cond_c
    iget-object v4, p0, Lcom/htc/android/mail/MailListTab;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/htc/android/mail/MailListTab;->mImportantMailStore:Lcom/htc/android/mail/database/ImportantMailStore;

    iget-object v5, p0, Lcom/htc/android/mail/MailListTab;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, v5, v8}, Lcom/htc/android/mail/database/ImportantMailStore;->registerWeakHandler(Ljava/lang/ref/WeakReference;Z)V

    goto :goto_2
.end method

.method protected final onStop()V
    .locals 2

    .prologue
    .line 1075
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onStop()V

    .line 1076
    sget-boolean v0, Lcom/htc/android/mail/MailListTab;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailListTab"

    const-string v1, "stop>>>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/AbsRequestController;->stopRequest(Ljava/lang/ref/WeakReference;)V

    .line 1078
    :cond_1
    return-void
.end method

.method public registerTab(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 1350
    if-nez p1, :cond_0

    .line 1355
    :goto_0
    return-void

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFirstLoadedTab:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1352
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab;->mFirstLoadedTab:Ljava/lang/String;

    .line 1354
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mRegisteredTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerWeakHandler(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1366
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mWeakHandlerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1367
    return-void
.end method

.method setAccountLabel()V
    .locals 6

    .prologue
    .line 1440
    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/MailListTab;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/Account;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1441
    .local v1, acLabel:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, acEmailAddr:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v2, v2, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 1443
    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v2, v2, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    .line 1445
    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1447
    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v2, v2, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    .line 1452
    :goto_0
    return-void

    .line 1450
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v2, v2, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method

.method protected setCmdBarButton1Text(I)V
    .locals 3
    .parameter "read"

    .prologue
    .line 574
    iput p1, p0, Lcom/htc/android/mail/MailListTab;->mButton1ReadStatus:I

    .line 575
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 576
    const v1, 0x7f0b0093

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailListTab;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, button1String:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x7e

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v2, :cond_0

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/MailListTab;->mSelectedMailGroupsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 585
    return-void

    .line 578
    .end local v0           #button1String:Ljava/lang/String;
    :cond_1
    const v1, 0x7f0b0092

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailListTab;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #button1String:Ljava/lang/String;
    goto :goto_0
.end method

.method protected setCmdBarButton1Text(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterButton1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 595
    return-void
.end method

.method public setFooterBarAreaVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1735
    if-eqz p1, :cond_1

    .line 1737
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterBarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1738
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mTab:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1747
    :cond_0
    :goto_0
    return-void

    .line 1741
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mFooterBarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1743
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->getTabCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/mail/MailListTab;->mIsIMEup:Z

    if-nez v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mTab:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setGroupNumCount(Lcom/htc/android/mail/util/SparseArray;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1465
    .local p1, groupNumCount:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab;->mGroupNumCount:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v1

    .line 1466
    :try_start_0
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab;->mGroupNumCount:Lcom/htc/android/mail/util/SparseArray;

    .line 1467
    monitor-exit v1

    .line 1468
    return-void

    .line 1467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTabCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tabName"
    .parameter "text"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    if-nez v0, :cond_0

    .line 1382
    :goto_0
    return-void

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/CarouselHost;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTabCountVisibility(Ljava/lang/String;Z)V
    .locals 1
    .parameter "tabName"
    .parameter "enable"

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    if-nez v0, :cond_0

    .line 1387
    :goto_0
    return-void

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public unregisterTab(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mRegisteredTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1359
    return-void
.end method

.method public unregisterWeakHandler(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1370
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab;->mWeakHandlerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1371
    return-void
.end method

.method update()V
    .locals 2

    .prologue
    .line 1390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/MailListTab;->mDirty:Z

    .line 1391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/MailListTab;->mUpdateTime:J

    .line 1392
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->updateTabUnreadNumber()V

    .line 1393
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListTab;->updateGroupNumCount()V

    .line 1394
    return-void
.end method

.method protected updateCmdBarButton1Count(I)V
    .locals 1
    .parameter "selectedMailCount"

    .prologue
    .line 589
    iput p1, p0, Lcom/htc/android/mail/MailListTab;->mSelectedMailGroupsCount:I

    .line 590
    iget v0, p0, Lcom/htc/android/mail/MailListTab;->mButton1ReadStatus:I

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailListTab;->setCmdBarButton1Text(I)V

    .line 591
    return-void
.end method

.method public updateGroupNumCount()V
    .locals 2

    .prologue
    .line 1397
    invoke-direct {p0}, Lcom/htc/android/mail/MailListTab;->removeUpdateGroupNumCountMessage()V

    .line 1398
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailListTab;->addUpdateGroupNumCountMessage(J)V

    .line 1399
    return-void
.end method

.method public updateTabUnreadNumber()V
    .locals 2

    .prologue
    .line 1411
    invoke-direct {p0}, Lcom/htc/android/mail/MailListTab;->removeUpdateTabUnreadNumberMessage()V

    .line 1412
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/MailListTab;->addUpdateTabUnreadNumberMessage(J)V

    .line 1413
    return-void
.end method
