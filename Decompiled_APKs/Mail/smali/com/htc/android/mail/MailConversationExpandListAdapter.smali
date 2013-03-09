.class public Lcom/htc/android/mail/MailConversationExpandListAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "MailConversationExpandListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/MailConversationExpandListAdapter$ConversationChildTag;,
        Lcom/htc/android/mail/MailConversationExpandListAdapter$QueryHandler;,
        Lcom/htc/android/mail/MailConversationExpandListAdapter$ViewChildHolder;,
        Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;
    }
.end annotation


# static fields
.field public static final DATE_TYPE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final ENABLE_DIVIDER:Z = false

.field public static final SUBJECT_TYPE:I = 0x2

.field public static final UNKNOWN_TYPE:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private chkListener:Landroid/view/View$OnClickListener;

.field private chkListenerBig:Landroid/view/View$OnClickListener;

.field private chkListenerIndicator:Landroid/view/View$OnClickListener;

.field private expandAlphabetType:I

.field private mAccount:Lcom/htc/android/mail/Account;

.field private mAccountId:J

.field private mAccountIdIdx:I

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mAsyncQueryCount:I

.field private mCollapsedGroupLayout:I

.field private final mContext:Landroid/content/Context;

.field private mExNameIdx:I

.field mExpandedGId:I

.field private mExpandedGroupLayout:I

.field private mGroupIdx:I

.field public mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMailList:Lcom/htc/android/mail/MailList;

.field private mMailbox:Lcom/htc/android/mail/Mailbox;

.field mMailboxId:J

.field private mMailboxIdIdx:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mRevertOrder:Z

.field private mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

.field mSentboxId:J

.field private mShowAccountIndicator:Z

.field private mSubjectIdx:I

.field private mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->DEBUG:Z

    .line 42
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/database/Cursor;IILcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;Lcom/htc/android/mail/util/SelectedMailGroups;Ljava/lang/CharSequence;II)V
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "groupLayout"
    .parameter "childLayout"
    .parameter "maillisttab"
    .parameter "tabInfo"
    .parameter "selectedMailGroups"
    .parameter "alphabet"
    .parameter "nameIndex"
    .parameter "alphabetType"

    .prologue
    .line 151
    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v1}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;Z)V

    .line 43
    const-string v1, "MailConversationActivity"

    iput-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAsyncQueryCount:I

    .line 52
    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAccountId:J

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAccount:Lcom/htc/android/mail/Account;

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 55
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailboxId:J

    .line 56
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mSentboxId:J

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mShowAccountIndicator:Z

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mGroupIdx:I

    .line 72
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mSubjectIdx:I

    .line 73
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAccountIdIdx:I

    .line 74
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailboxIdIdx:I

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAlphabetLength:I

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mType:I

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mRevertOrder:Z

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->expandAlphabetType:I

    .line 93
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mExNameIdx:I

    .line 215
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mExpandedGId:I

    .line 216
    new-instance v1, Lcom/htc/android/mail/MailConversationExpandListAdapter$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailConversationExpandListAdapter$1;-><init>(Lcom/htc/android/mail/MailConversationExpandListAdapter;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->chkListener:Landroid/view/View$OnClickListener;

    .line 223
    new-instance v1, Lcom/htc/android/mail/MailConversationExpandListAdapter$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailConversationExpandListAdapter$2;-><init>(Lcom/htc/android/mail/MailConversationExpandListAdapter;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->chkListenerBig:Landroid/view/View$OnClickListener;

    .line 231
    new-instance v1, Lcom/htc/android/mail/MailConversationExpandListAdapter$3;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailConversationExpandListAdapter$3;-><init>(Lcom/htc/android/mail/MailConversationExpandListAdapter;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->chkListenerIndicator:Landroid/view/View$OnClickListener;

    .line 152
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 153
    iput p3, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mCollapsedGroupLayout:I

    .line 154
    iput p4, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mExpandedGroupLayout:I

    .line 155
    iput-object p5, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    .line 156
    new-instance v1, Lcom/htc/android/mail/MailConversationExpandListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/android/mail/MailConversationExpandListAdapter$QueryHandler;-><init>(Lcom/htc/android/mail/MailConversationExpandListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 157
    iput-object p6, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 158
    iput-object p7, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    .line 160
    iput-object p1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mContext:Landroid/content/Context;

    .line 163
    iput-object p8, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAlphabet:Ljava/lang/CharSequence;

    .line 164
    move/from16 v0, p9

    iput v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mExNameIdx:I

    .line 165
    move/from16 v0, p10

    iput v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->expandAlphabetType:I

    .line 166
    new-instance v1, Lcom/htc/android/mail/MailAlphabetIndexer;

    iget-object v2, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mExNameIdx:I

    const/4 v6, 0x1

    move-object v3, p2

    move-object v5, p8

    invoke-direct/range {v1 .. v6}, Lcom/htc/android/mail/MailAlphabetIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;Z)V

    iput-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    .line 167
    iget-boolean v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mRevertOrder:Z

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailAlphabetIndexer;->setRevertOrder()V

    .line 171
    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 172
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/MailConversationExpandListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/MailConversationExpandListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAsyncQueryCount:I

    return v0
.end method

.method static synthetic access$210(Lcom/htc/android/mail/MailConversationExpandListAdapter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAsyncQueryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAsyncQueryCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/MailConversationExpandListAdapter;)Lcom/htc/android/mail/MailList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 193
    return-void
.end method


# virtual methods
.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 4
    .parameter "view"
    .parameter "context"
    .parameter "c"
    .parameter "islast"

    .prologue
    .line 611
    new-instance v1, Lcom/htc/android/mail/HtcSimpleSeparable;

    const-string v2, "list_child"

    invoke-direct {v1, v2}, Lcom/htc/android/mail/HtcSimpleSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, p1

    .line 614
    check-cast v0, Lcom/htc/android/mail/MailListItemBig;

    .line 615
    .local v0, childView:Lcom/htc/android/mail/MailListItemBig;
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setProtocol(I)V

    .line 616
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setMessageStatusMap(Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;)V

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v1, v1, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 620
    check-cast p1, Lcom/htc/android/mail/MailListItemBig;

    .end local p1
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/htc/android/mail/MailListItemBig;->enableSpannable(Ljava/lang/String;)V

    .line 624
    :goto_0
    iget-boolean v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mShowAccountIndicator:Z

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setShowAccountIndicator(Z)V

    .line 625
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-boolean v1, v1, Lcom/htc/android/mail/Mailbox;->showSender:Z

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setShowSender(Z)V

    .line 626
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setConversationChildView(Z)V

    .line 627
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/htc/android/mail/MailListItemBig;->bind(Landroid/database/Cursor;ILcom/htc/android/mail/util/SelectedMailMessages;Lcom/htc/android/mail/util/SelectedMailGroups;)V

    .line 629
    invoke-virtual {v0}, Lcom/htc/android/mail/MailListItemBig;->setChildCheckboxEvent()V

    .line 630
    return-void

    .line 622
    .restart local p1
    :cond_1
    check-cast p1, Lcom/htc/android/mail/MailListItemBig;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/android/mail/MailListItemBig;->disableSpannable()V

    goto :goto_0
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 47
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 313
    const v41, 0x7f0900ea

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout;

    .line 314
    .local v19, framelayout_1x1:Landroid/widget/FrameLayout;
    const v41, 0x7f090100

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 315
    .local v20, framelayout_read_unread:Landroid/view/View;
    sget-boolean v41, Lcom/htc/android/mail/MailConversationExpandListAdapter;->DBG:Z

    if-eqz v41, :cond_0

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "view>"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ","

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "param>"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ","

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    .local v32, param:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v41, p3

    .line 322
    check-cast v41, Lcom/htc/android/mail/database/ConversationGroupCursor;

    invoke-virtual/range {v41 .. v41}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getChildCount()I

    move-result v10

    .local v10, childCount:I
    move-object/from16 v41, p3

    .line 323
    check-cast v41, Lcom/htc/android/mail/database/ConversationGroupCursor;

    invoke-virtual/range {v41 .. v41}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getActualPosition()I

    move-result v24

    .local v24, groupPositionInCursor:I
    move-object/from16 v41, p3

    .line 324
    check-cast v41, Lcom/htc/android/mail/database/ConversationGroupCursor;

    invoke-virtual/range {v41 .. v41}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getUIPosition()I

    move-result v25

    .line 325
    .local v25, groupPositionInUI:I
    sget-boolean v41, Lcom/htc/android/mail/MailConversationExpandListAdapter;->DBG:Z

    if-eqz v41, :cond_1

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v41, v0

    sget-object v42, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v43, "groupPositionInCursor: %d, groupPositionInUI, childCount: %d "

    const/16 v44, 0x3

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    aput-object v46, v44, v45

    const/16 v45, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    aput-object v46, v44, v45

    const/16 v45, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    aput-object v46, v44, v45

    invoke-static/range {v42 .. v44}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 331
    .local v12, config:Landroid/content/res/Configuration;
    sget-boolean v41, Lcom/htc/android/mail/Mail;->COMBINED_CONVERSATION:Z

    if-eqz v41, :cond_6

    const/16 v41, 0x1

    move/from16 v0, v41

    if-ne v10, v0, :cond_6

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/htc/android/mail/MailList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HtcExpandableListView;

    .line 334
    .local v18, expandListView:Lcom/htc/widget/HtcExpandableListView;
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->collapseGroup(I)Z

    .line 335
    const/16 v41, -0x2

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 336
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    const/16 v41, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 338
    const/16 v41, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/android/mail/MailListItemBig;

    .line 341
    .local v26, groupView:Lcom/htc/android/mail/MailListItemBig;
    if-nez v26, :cond_2

    .line 342
    new-instance v26, Lcom/htc/android/mail/MailListItemBig;

    .end local v26           #groupView:Lcom/htc/android/mail/MailListItemBig;
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/android/mail/MailListItemBig;-><init>(Landroid/content/Context;)V

    .line 343
    .restart local v26       #groupView:Lcom/htc/android/mail/MailListItemBig;
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 345
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v41, v0

    if-eqz v41, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    move/from16 v41, v0

    if-eqz v41, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_4

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->enableSpannable(Ljava/lang/String;)V

    .line 350
    :goto_0
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setRootView(Landroid/view/View;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v41

    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setProtocol(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v41, v0

    if-eqz v41, :cond_3

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-object/from16 v41, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setMessageStatusMap(Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;)V

    .line 356
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mShowAccountIndicator:Z

    move/from16 v41, v0

    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setShowAccountIndicator(Z)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/htc/android/mail/Mailbox;->showSender:Z

    move/from16 v41, v0

    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setShowSender(Z)V

    .line 358
    const/16 v41, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setConversationGroupView(Z)V

    .line 359
    iget v0, v12, Landroid/content/res/Configuration;->orientation:I

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_5

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/htc/android/mail/Account;->getPreviewLineNum(Landroid/content/Context;)I

    move-result v41

    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setPreviewLinesNumber(I)V

    .line 364
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    move-object/from16 v43, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v41

    move-object/from16 v3, v42

    move-object/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/MailListItemBig;->bind(Landroid/database/Cursor;ILcom/htc/android/mail/util/SelectedMailMessages;Lcom/htc/android/mail/util/SelectedMailGroups;)V

    .line 365
    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/MailListItemBig;->setChildCheckboxEvent()V

    .line 603
    .end local v18           #expandListView:Lcom/htc/widget/HtcExpandableListView;
    .end local v26           #groupView:Lcom/htc/android/mail/MailListItemBig;
    .end local p3
    :goto_2
    return-void

    .line 348
    .restart local v18       #expandListView:Lcom/htc/widget/HtcExpandableListView;
    .restart local v26       #groupView:Lcom/htc/android/mail/MailListItemBig;
    .restart local p3
    :cond_4
    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/MailListItemBig;->disableSpannable()V

    goto/16 :goto_0

    .line 362
    :cond_5
    const/16 v41, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListItemBig;->setPreviewLinesNumber(I)V

    goto :goto_1

    .line 368
    .end local v18           #expandListView:Lcom/htc/widget/HtcExpandableListView;
    .end local v26           #groupView:Lcom/htc/android/mail/MailListItemBig;
    :cond_6
    const/16 v41, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 369
    const/16 v41, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    const v42, 0x205004d

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v41

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 372
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    sget-boolean v41, Lcom/htc/android/mail/MailConversationExpandListAdapter;->DBG:Z

    if-eqz v41, :cond_7

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v41, v0

    const-string v42, "bind normal group>"

    invoke-static/range {v41 .. v42}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_7
    const v41, 0x7f0900ff

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 379
    .local v17, expand:Landroid/widget/ImageView;
    if-eqz p4, :cond_17

    .line 380
    const-string v41, "attachment_collapse_selector"

    const/high16 v42, 0x208

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v41

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 387
    :goto_3
    const/16 v41, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    const v41, 0x7f0900ed

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setVisibility(I)V

    .line 391
    const v41, 0x7f0900f1

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 394
    .local v38, view_subject:Landroid/widget/TextView;
    const v41, 0x7f0900fe

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 395
    .local v39, view_unreadBubble:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const-string v42, "common_notification_on"

    const v43, 0x208006a

    invoke-static/range {v41 .. v43}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v41

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 399
    const v41, 0x7f0900f2

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 402
    .local v40, view_unreadImg:Landroid/widget/ImageView;
    const/16 v35, 0x0

    .line 403
    .local v35, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    move/from16 v41, v0

    if-eqz v41, :cond_a

    .line 404
    sget v36, Lcom/htc/android/mail/MailProvider;->sSummaryThreadSubjectIdx:I

    .line 405
    .local v36, subjectIdx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailbox:Lcom/htc/android/mail/Mailbox;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/htc/android/mail/Mailbox;->showSender:Z

    move/from16 v41, v0

    if-nez v41, :cond_8

    .line 406
    sget v36, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadSubjectIdx:I

    .line 408
    :cond_8
    move-object/from16 v0, p3

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 409
    if-eqz v35, :cond_9

    const-string v41, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_9

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v41

    if-nez v41, :cond_a

    .line 410
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const v42, 0x7f0b0203

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 417
    .end local v36           #subjectIdx:I
    :cond_a
    if-eqz v38, :cond_1b

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v41, v0

    if-eqz v41, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    move/from16 v41, v0

    if-eqz v41, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_19

    .line 419
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 420
    .local v21, fromLow:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    .line 421
    .local v33, start:I
    if-ltz v33, :cond_18

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailList:Lcom/htc/android/mail/MailList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v41

    add-int v16, v33, v41

    .line 424
    .local v16, end:I
    new-instance v29, Landroid/text/SpannableString;

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 425
    .local v29, markedName:Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    const-string v43, "text_selection_highlight"

    const v44, 0x20a001b

    invoke-static/range {v42 .. v44}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 426
    .local v11, color:I
    new-instance v41, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v41

    invoke-direct {v0, v11}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v42, 0x21

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v33

    move/from16 v3, v16

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 427
    new-instance v41, Landroid/text/style/ForegroundColorSpan;

    const/16 v42, -0x1

    invoke-direct/range {v41 .. v42}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v42, 0x21

    move-object/from16 v0, v29

    move-object/from16 v1, v41

    move/from16 v2, v33

    move/from16 v3, v16

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 428
    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    .end local v11           #color:I
    .end local v16           #end:I
    .end local v21           #fromLow:Ljava/lang/String;
    .end local v29           #markedName:Landroid/text/SpannableString;
    .end local v33           #start:I
    :goto_4
    iget v0, v12, Landroid/content/res/Configuration;->orientation:I

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_1a

    .line 438
    const v31, 0x7f080002

    .line 442
    .local v31, maxWidthId:I
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v41

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v30, v0

    .line 443
    .local v30, maxWidth:I
    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 450
    .end local v30           #maxWidth:I
    .end local v31           #maxWidthId:I
    :cond_b
    :goto_6
    const/16 v22, 0x0

    .line 451
    .local v22, group:Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 452
    .local v5, accountId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    move/from16 v41, v0

    if-eqz v41, :cond_c

    .line 455
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mGroupIdx:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAccountIdIdx:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 463
    :cond_c
    const/4 v13, 0x0

    .line 464
    .local v13, countText:Ljava/lang/String;
    const/16 v41, 0x63

    move/from16 v0, v41

    if-le v10, v0, :cond_1c

    .line 465
    const-string v13, " (99+) "

    .line 480
    :goto_7
    if-eqz v20, :cond_d

    .line 481
    const/16 v41, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :cond_d
    const v41, 0x7f0900f2

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 485
    .local v7, accountIndicator:Landroid/widget/ImageView;
    if-eqz v19, :cond_e

    .line 486
    const v41, 0x7f0900f2

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #accountIndicator:Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 488
    .restart local v7       #accountIndicator:Landroid/widget/ImageView;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    move/from16 v41, v0

    if-eqz v41, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mShowAccountIndicator:Z

    move/from16 v41, v0

    if-eqz v41, :cond_1d

    .line 489
    invoke-static {v5, v6}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v28

    .line 490
    .local v28, mAccount:Lcom/htc/android/mail/Account;
    sget-object v41, Lcom/htc/android/mail/MailCommon;->account_drawable:[[I

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/Account;->getColorGroupIdx()I

    move-result v42

    aget-object v41, v41, v42

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/Account;->getColorIdx()I

    move-result v42

    aget v15, v41, v42

    .line 491
    .local v15, drawableId:I
    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 492
    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v41

    if-eqz v41, :cond_f

    .line 493
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    .end local v15           #drawableId:I
    .end local v28           #mAccount:Lcom/htc/android/mail/Account;
    :cond_f
    :goto_8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v23

    .line 502
    .local v23, groupPosition:I
    new-instance v14, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;-><init>(Lcom/htc/android/mail/MailConversationExpandListAdapter;)V

    .line 503
    .local v14, data:Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;
    move-object/from16 v0, v22

    iput-object v0, v14, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->group:Ljava/lang/String;

    .line 504
    move/from16 v0, v23

    iput v0, v14, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->position:I

    .line 505
    move-object/from16 v0, v35

    iput-object v0, v14, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->subject:Ljava/lang/String;

    .line 506
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAccountIdIdx:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    move-wide/from16 v0, v41

    iput-wide v0, v14, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->accountId:J

    .line 507
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailboxIdIdx:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    move-wide/from16 v0, v41

    iput-wide v0, v14, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->mailBoxId:J

    .line 508
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mGroupIdx:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    move-wide/from16 v0, v41

    iput-wide v0, v14, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->groupId:J

    .line 509
    iput v10, v14, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->totalNum:I

    .line 511
    sget-object v41, Lcom/htc/android/mail/MailCommon;->c_unread_primary:Landroid/content/res/ColorStateList;

    if-nez v41, :cond_10

    .line 512
    invoke-static/range {p2 .. p2}, Lcom/htc/android/mail/MailCommon;->getMailListItemStyle(Landroid/content/Context;)V

    .line 515
    :cond_10
    if-eqz v39, :cond_12

    move-object/from16 v41, p3

    .line 516
    check-cast v41, Lcom/htc/android/mail/database/ConversationGroupCursor;

    invoke-virtual/range {v41 .. v41}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getUnreadCount()I

    move-result v37

    .line 517
    .local v37, unreadCount:I
    if-lez v37, :cond_1f

    .line 518
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    .line 519
    .local v34, strCount:Ljava/lang/String;
    const/16 v41, 0x63

    move/from16 v0, v37

    move/from16 v1, v41

    if-le v0, v1, :cond_11

    const-string v34, "99+"

    .line 521
    :cond_11
    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v41

    const/16 v43, 0x2

    move/from16 v0, v41

    move/from16 v1, v43

    if-le v0, v1, :cond_1e

    const v41, 0x20300d5

    :goto_9
    move-object/from16 v0, v39

    move-object/from16 v1, v42

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 524
    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    .end local v34           #strCount:Ljava/lang/String;
    .end local v37           #unreadCount:I
    :cond_12
    :goto_a
    if-eqz v40, :cond_22

    .line 531
    check-cast p3, Lcom/htc/android/mail/database/ConversationGroupCursor;

    .end local p3
    invoke-virtual/range {p3 .. p3}, Lcom/htc/android/mail/database/ConversationGroupCursor;->isAllRead()Z

    move-result v27

    .line 532
    .local v27, isAllRead:Z
    move/from16 v0, v27

    iput-boolean v0, v14, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->isAllRead:Z

    .line 533
    if-eqz v27, :cond_20

    .line 534
    sget-object v41, Lcom/htc/android/mail/MailCommon;->c_read_primary:Landroid/content/res/ColorStateList;

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 536
    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v41

    sget-object v42, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-eq v0, v1, :cond_13

    .line 537
    sget-object v41, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 544
    :cond_13
    const/16 v41, 0x3e

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_14

    const/16 v41, 0xd2

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_14

    .line 546
    sget v41, Lcom/htc/android/mail/MailCommon;->COLOR_SKT_ITEM_READ:I

    move-object/from16 v0, v19

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 570
    .end local v27           #isAllRead:Z
    :cond_14
    :goto_b
    const v41, 0x7f0900bc

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 572
    .local v8, chb:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    const-string v43, "mail_checkbox_no_on_press"

    const v44, 0x7f02002c

    invoke-static/range {v42 .. v44}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 577
    const v41, 0x7f0900ef

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setVisibility(I)V

    .line 578
    const v41, 0x7f0900ee

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setVisibility(I)V

    .line 579
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 580
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    move-object/from16 v41, v0

    if-eqz v41, :cond_23

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mSelectedMailGroups:Lcom/htc/android/mail/util/SelectedMailGroups;

    move-object/from16 v41, v0

    iget-wide v0, v14, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->mailBoxId:J

    move-wide/from16 v42, v0

    iget-object v0, v14, Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;->group:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v41

    move-wide/from16 v1, v42

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/htc/android/mail/util/SelectedMailGroups;->groupCheckboxChecked(JLjava/lang/String;I)Z

    move-result v9

    .line 584
    .local v9, checked:Z
    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 591
    .end local v9           #checked:Z
    :cond_15
    :goto_c
    invoke-virtual {v8, v14}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 592
    if-eqz p4, :cond_24

    .line 593
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mExpandedGId:I

    .line 601
    :cond_16
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->chkListener:Landroid/view/View$OnClickListener;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    const v41, 0x7f0900fc

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->chkListenerBig:Landroid/view/View$OnClickListener;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 383
    .end local v5           #accountId:J
    .end local v7           #accountIndicator:Landroid/widget/ImageView;
    .end local v8           #chb:Landroid/widget/CheckBox;
    .end local v13           #countText:Ljava/lang/String;
    .end local v14           #data:Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;
    .end local v22           #group:Ljava/lang/String;
    .end local v23           #groupPosition:I
    .end local v35           #subject:Ljava/lang/String;
    .end local v38           #view_subject:Landroid/widget/TextView;
    .end local v39           #view_unreadBubble:Landroid/widget/TextView;
    .end local v40           #view_unreadImg:Landroid/widget/ImageView;
    .restart local p3
    :cond_17
    const-string v41, "common_expand"

    const v42, 0x20801ae

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v41

    move-object/from16 v0, v17

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 430
    .restart local v21       #fromLow:Ljava/lang/String;
    .restart local v33       #start:I
    .restart local v35       #subject:Ljava/lang/String;
    .restart local v38       #view_subject:Landroid/widget/TextView;
    .restart local v39       #view_unreadBubble:Landroid/widget/TextView;
    .restart local v40       #view_unreadImg:Landroid/widget/ImageView;
    :cond_18
    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 433
    .end local v21           #fromLow:Ljava/lang/String;
    .end local v33           #start:I
    :cond_19
    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 440
    :cond_1a
    const v31, 0x7f080003

    .restart local v31       #maxWidthId:I
    goto/16 :goto_5

    .line 445
    .end local v31           #maxWidthId:I
    :cond_1b
    sget-boolean v41, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v41, :cond_b

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v41, v0

    const-string v42, "bindGroupView, view_subject is null..."

    invoke-static/range {v41 .. v42}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 469
    .restart local v5       #accountId:J
    .restart local v13       #countText:Ljava/lang/String;
    .restart local v22       #group:Ljava/lang/String;
    :cond_1c
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, " ("

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ") "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7

    .line 496
    .restart local v7       #accountIndicator:Landroid/widget/ImageView;
    :cond_1d
    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_f

    .line 497
    const/16 v41, 0x8

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 522
    .restart local v14       #data:Lcom/htc/android/mail/MailConversationExpandListAdapter$GroupCheckData;
    .restart local v23       #groupPosition:I
    .restart local v34       #strCount:Ljava/lang/String;
    .restart local v37       #unreadCount:I
    :cond_1e
    const v41, 0x20300d7

    goto/16 :goto_9

    .line 526
    .end local v34           #strCount:Ljava/lang/String;
    :cond_1f
    const/16 v41, 0x8

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 549
    .end local v37           #unreadCount:I
    .end local p3
    .restart local v27       #isAllRead:Z
    :cond_20
    sget-object v41, Lcom/htc/android/mail/MailCommon;->c_unread_primary:Landroid/content/res/ColorStateList;

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 551
    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v41

    sget-object v42, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-eq v0, v1, :cond_21

    .line 552
    sget-object v41, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 559
    :cond_21
    const/16 v41, 0x3e

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_14

    const/16 v41, 0xd2

    sget-short v42, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_14

    .line 561
    sget v41, Lcom/htc/android/mail/MailCommon;->COLOR_DEFAULT_ITEM_READ:I

    move-object/from16 v0, v19

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_b

    .line 565
    .end local v27           #isAllRead:Z
    .restart local p3
    :cond_22
    sget-boolean v41, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v41, :cond_14

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v41, v0

    const-string v42, "bindGroupView, view_unreadImg is null..."

    invoke-static/range {v41 .. v42}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 586
    .end local p3
    .restart local v8       #chb:Landroid/widget/CheckBox;
    :cond_23
    sget-boolean v41, Lcom/htc/android/mail/MailConversationExpandListAdapter;->DEBUG:Z

    if-eqz v41, :cond_15

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v41, v0

    const-string v42, "mSelectedMailGroups null>"

    invoke-static/range {v41 .. v42}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 594
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mExpandedGId:I

    move/from16 v41, v0

    move/from16 v0, v41

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 595
    const/16 v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mExpandedGId:I

    .line 597
    sget-boolean v41, Lcom/htc/android/mail/MailConversationExpandListAdapter;->DBG:Z

    if-eqz v41, :cond_16

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "clear mChildCheckBox>"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method public changeCursor(Landroid/database/Cursor;ZII)V
    .locals 6
    .parameter "cursor"
    .parameter "clearAllCachedCursor"
    .parameter "selectedColunmIndex"
    .parameter "alphabetType"

    .prologue
    const/4 v5, 0x1

    .line 635
    invoke-super {p0, p1}, Landroid/widget/CursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 638
    const/4 v4, 0x0

    .line 639
    .local v4, alphabetReal:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mRevertOrder:Z

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAlphabet:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->revertString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 644
    :goto_0
    iput p3, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mExNameIdx:I

    .line 645
    iput p4, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->expandAlphabetType:I

    .line 646
    new-instance v0, Lcom/htc/android/mail/MailAlphabetIndexer;

    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mExNameIdx:I

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailAlphabetIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;Z)V

    iput-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    .line 647
    iget-boolean v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mRevertOrder:Z

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailAlphabetIndexer;->setRevertOrder()V

    .line 649
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->expandAlphabetType:I

    packed-switch v0, :pswitch_data_0

    .line 658
    :goto_1
    :pswitch_0
    return-void

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAlphabet:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 651
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/MailAlphabetIndexer;->setCompareType(I)V

    goto :goto_1

    .line 654
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mIndexer:Lcom/htc/android/mail/MailAlphabetIndexer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailAlphabetIndexer;->setCompareType(I)V

    goto :goto_1

    .line 649
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3
    .parameter "groupCursor"

    .prologue
    .line 662
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-nez v1, :cond_1

    .line 663
    sget-boolean v1, Lcom/htc/android/mail/MailConversationExpandListAdapter;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getChildrenCursor>>mQueryHandler is null, do nothing"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_0
    const/4 v0, 0x0

    .line 669
    :goto_0
    return-object v0

    .line 668
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    invoke-virtual {v1, p1}, Lcom/htc/android/mail/MailList$TabInfo;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 669
    .local v0, c:Landroid/database/Cursor;
    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 3

    .prologue
    .line 294
    iget-object v2, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-boolean v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v1, v2, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    check-cast v1, Lcom/htc/android/mail/database/ConversationGroupCursor;

    .line 297
    .local v1, groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    invoke-virtual {v1}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getCount()I

    move-result v0

    .line 301
    .end local v1           #groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/CursorTreeAdapter;->getGroupCount()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 680
    iget-object v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget-object v0, v1, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    check-cast v0, Lcom/htc/android/mail/database/ConversationGroupCursor;

    .line 681
    .local v0, groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/database/ConversationGroupCursor;->getGroupIdByGroupPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getMailboxId()J
    .locals 2

    .prologue
    .line 692
    iget-wide v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailboxId:J

    return-wide v0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSentMailboxId()J
    .locals 2

    .prologue
    .line 721
    iget-wide v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mSentboxId:J

    return-wide v0
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 212
    new-instance v0, Lcom/htc/android/mail/MailListItemBig;

    invoke-direct {v0, p1}, Lcom/htc/android/mail/MailListItemBig;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    .line 205
    iget-object v2, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p3, :cond_0

    iget v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mExpandedGroupLayout:I

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, v:Landroid/view/View;
    return-object v0

    .line 205
    .end local v0           #v:Landroid/view/View;
    :cond_0
    iget v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mCollapsedGroupLayout:I

    goto :goto_0
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 676
    return-void
.end method

.method public revertString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "src"

    .prologue
    .line 184
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, temp:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v2

    .line 186
    .local v2, temp2:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 187
    .local v0, res:Ljava/lang/String;
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, c:Landroid/database/Cursor;
    return-object v0
.end method

.method public setAccountId(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 715
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAccountId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :cond_0
    iput-wide p1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAccountId:J

    .line 717
    iget-wide v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAccountId:J

    invoke-static {v0, v1}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAccount:Lcom/htc/android/mail/Account;

    .line 718
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 197
    return-void
.end method

.method public setMailboxId(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 696
    iput-wide p1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailboxId:J

    .line 697
    iget-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailbox:Lcom/htc/android/mail/Mailbox;

    .line 698
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMailboxId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-boolean v2, v2, Lcom/htc/android/mail/Mailbox;->showSender:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailbox:Lcom/htc/android/mail/Mailbox;

    iget-boolean v0, v0, Lcom/htc/android/mail/Mailbox;->showSender:Z

    if-eqz v0, :cond_1

    .line 702
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadGroupIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mGroupIdx:I

    .line 703
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadSubjectIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mSubjectIdx:I

    .line 704
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadAccountIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAccountIdIdx:I

    .line 705
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadMailboxIdIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailboxIdIdx:I

    .line 712
    :goto_0
    return-void

    .line 707
    :cond_1
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadGroupIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mGroupIdx:I

    .line 708
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadSubjectIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mSubjectIdx:I

    .line 709
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadAccountIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mAccountIdIdx:I

    .line 710
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadMailboxIdIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mMailboxIdIdx:I

    goto :goto_0
.end method

.method public setRevertOrder()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mRevertOrder:Z

    .line 181
    return-void
.end method

.method public setSentMailboxId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 725
    iput-wide p1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mSentboxId:J

    .line 726
    return-void
.end method

.method public setShowAccountIndicator(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mShowAccountIndicator:Z

    .line 290
    return-void
.end method

.method public setSortConditions(Z)V
    .locals 0
    .parameter "sort_order"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/htc/android/mail/MailConversationExpandListAdapter;->mRevertOrder:Z

    .line 177
    return-void
.end method
