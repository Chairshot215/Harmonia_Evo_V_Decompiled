.class public Lcom/htc/android/mail/MailListItemBig;
.super Landroid/widget/LinearLayout;
.source "MailListItemBig.java"


# static fields
.field private static DEBUG:Z = false

.field public static final sMailListItemBigForDelete:I = 0x3e8


# instance fields
.field private TAG:Ljava/lang/String;

.field _del:I

.field _read:I

.field _subject:Ljava/lang/String;

.field private accountIdIDX:I

.field private accountIndicator:Landroid/widget/ImageView;

.field private boxId:J

.field private cbox:Landroid/widget/CheckBox;

.field private cboxParentLayout:Landroid/widget/FrameLayout;

.field private ccIDX:I

.field private ccStringIDX:I

.field private checkEvent:Landroid/view/View$OnClickListener;

.field private checkEventBig:Landroid/view/View$OnClickListener;

.field private checkEventChild:Landroid/view/View$OnClickListener;

.field private countIDX:I

.field private downloadtotalsizeIDX:I

.field private flagBigArea:Landroid/view/View;

.field private flagBtn:Landroid/widget/ToggleButton;

.field private flagEvent:Landroid/view/View$OnClickListener;

.field private flags:I

.field private flagsIDX:I

.field private group:Ljava/lang/String;

.field private groupIDX:I

.field private highPriorityBtn:Landroid/widget/ImageView;

.field private idIDX:I

.field private importanceIDX:I

.field private incAttachmentIDX:I

.field private internaldateIDX:I

.field private isConversationChildView:Z

.field private isConversationGroupView:Z

.field private lowPriorityBtn:Landroid/widget/ImageView;

.field private mAccount:Lcom/htc/android/mail/Account;

.field private mAccountId:J

.field private mAttachIcon:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field private mDate:Landroid/widget/TextView;

.field private mDel:Landroid/widget/CheckBox;

.field private mFlagStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

.field private mFlags:I

.field private mFrom:Landroid/widget/TextView;

.field private mInvalidLayout:Z

.field private mItemLayout:Landroid/widget/FrameLayout;

.field mMarkedName:Landroid/text/SpannableString;

.field public mMessageId:J

.field private mPosition:I

.field public mPreview:Landroid/widget/TextView;

.field private mPreviewLinesNum:I

.field private mProtocol:I

.field private mReadStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

.field private mSearchSvrMail:Z

.field private mShowAccountIndicator:Z

.field private mShowSize:Z

.field private mSpan:Z

.field private mSubject:Landroid/widget/TextView;

.field private mailActIDX:I

.field private mailactFlag:I

.field private mailboxIdIDX:I

.field private mark_mode:I

.field private meetingBtn:Landroid/widget/ImageView;

.field private meetingFlag:I

.field private messageClassIntIDX:I

.field private messagesizeIDX:I

.field private previewIDX:I

.field private priorityFlag:I

.field private readCountIDX:I

.field private readIDX:I

.field private searchKey:Ljava/lang/String;

.field private senderIDX:I

.field private showSender:Z

.field private singleMailGroupView:Z

.field private subjectIDX:I

.field private subjtypeIDX:I

.field private toIDX:I

.field private toStringIDX:I

.field private viewRoot:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailListItemBig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 108
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const-string v1, "MailListItemBig"

    iput-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->TAG:Ljava/lang/String;

    .line 67
    iput-object v4, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    .line 68
    iput-object v4, p0, Lcom/htc/android/mail/MailListItemBig;->cboxParentLayout:Landroid/widget/FrameLayout;

    .line 78
    iput v3, p0, Lcom/htc/android/mail/MailListItemBig;->_read:I

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/mail/MailListItemBig;->showSender:Z

    .line 80
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListItemBig;->isConversationGroupView:Z

    .line 81
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListItemBig;->isConversationChildView:Z

    .line 82
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListItemBig;->mSearchSvrMail:Z

    .line 84
    iput v3, p0, Lcom/htc/android/mail/MailListItemBig;->mProtocol:I

    .line 86
    iput v3, p0, Lcom/htc/android/mail/MailListItemBig;->mark_mode:I

    .line 87
    iput-object v4, p0, Lcom/htc/android/mail/MailListItemBig;->mReadStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    .line 88
    iput-object v4, p0, Lcom/htc/android/mail/MailListItemBig;->mFlagStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    .line 91
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListItemBig;->mSpan:Z

    .line 94
    iput-object v4, p0, Lcom/htc/android/mail/MailListItemBig;->mAccount:Lcom/htc/android/mail/Account;

    .line 97
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListItemBig;->mShowAccountIndicator:Z

    .line 98
    iput v3, p0, Lcom/htc/android/mail/MailListItemBig;->mPreviewLinesNum:I

    .line 100
    iput-object v4, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    .line 101
    iput-object v4, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    .line 103
    iput-object p0, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    .line 104
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListItemBig;->singleMailGroupView:Z

    .line 105
    iput-boolean v3, p0, Lcom/htc/android/mail/MailListItemBig;->mInvalidLayout:Z

    .line 323
    new-instance v1, Lcom/htc/android/mail/MailListItemBig$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailListItemBig$1;-><init>(Lcom/htc/android/mail/MailListItemBig;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->checkEvent:Landroid/view/View$OnClickListener;

    .line 335
    new-instance v1, Lcom/htc/android/mail/MailListItemBig$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailListItemBig$2;-><init>(Lcom/htc/android/mail/MailListItemBig;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->checkEventChild:Landroid/view/View$OnClickListener;

    .line 345
    new-instance v1, Lcom/htc/android/mail/MailListItemBig$3;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailListItemBig$3;-><init>(Lcom/htc/android/mail/MailListItemBig;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->checkEventBig:Landroid/view/View$OnClickListener;

    .line 379
    new-instance v1, Lcom/htc/android/mail/MailListItemBig$4;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailListItemBig$4;-><init>(Lcom/htc/android/mail/MailListItemBig;)V

    iput-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->flagEvent:Landroid/view/View$OnClickListener;

    .line 516
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->idIDX:I

    .line 517
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->readIDX:I

    .line 518
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->internaldateIDX:I

    .line 519
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->incAttachmentIDX:I

    .line 520
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->subjectIDX:I

    .line 521
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->subjtypeIDX:I

    .line 522
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->toIDX:I

    .line 523
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->toStringIDX:I

    .line 524
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->ccIDX:I

    .line 525
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->ccStringIDX:I

    .line 526
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->senderIDX:I

    .line 527
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->importanceIDX:I

    .line 528
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->messageClassIntIDX:I

    .line 529
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->flagsIDX:I

    .line 530
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->mailActIDX:I

    .line 531
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->downloadtotalsizeIDX:I

    .line 532
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->messagesizeIDX:I

    .line 533
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->readCountIDX:I

    .line 534
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->countIDX:I

    .line 535
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->mailboxIdIDX:I

    .line 536
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->accountIdIDX:I

    .line 537
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->groupIDX:I

    .line 538
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->previewIDX:I

    .line 109
    iput-object p1, p0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 111
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f030029

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const-string v0, "MailListItemBig"

    iput-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->TAG:Ljava/lang/String;

    .line 67
    iput-object v3, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    .line 68
    iput-object v3, p0, Lcom/htc/android/mail/MailListItemBig;->cboxParentLayout:Landroid/widget/FrameLayout;

    .line 78
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->_read:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailListItemBig;->showSender:Z

    .line 80
    iput-boolean v2, p0, Lcom/htc/android/mail/MailListItemBig;->isConversationGroupView:Z

    .line 81
    iput-boolean v2, p0, Lcom/htc/android/mail/MailListItemBig;->isConversationChildView:Z

    .line 82
    iput-boolean v2, p0, Lcom/htc/android/mail/MailListItemBig;->mSearchSvrMail:Z

    .line 84
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->mProtocol:I

    .line 86
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->mark_mode:I

    .line 87
    iput-object v3, p0, Lcom/htc/android/mail/MailListItemBig;->mReadStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    .line 88
    iput-object v3, p0, Lcom/htc/android/mail/MailListItemBig;->mFlagStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    .line 91
    iput-boolean v2, p0, Lcom/htc/android/mail/MailListItemBig;->mSpan:Z

    .line 94
    iput-object v3, p0, Lcom/htc/android/mail/MailListItemBig;->mAccount:Lcom/htc/android/mail/Account;

    .line 97
    iput-boolean v2, p0, Lcom/htc/android/mail/MailListItemBig;->mShowAccountIndicator:Z

    .line 98
    iput v2, p0, Lcom/htc/android/mail/MailListItemBig;->mPreviewLinesNum:I

    .line 100
    iput-object v3, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    .line 101
    iput-object v3, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    .line 103
    iput-object p0, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    .line 104
    iput-boolean v2, p0, Lcom/htc/android/mail/MailListItemBig;->singleMailGroupView:Z

    .line 105
    iput-boolean v2, p0, Lcom/htc/android/mail/MailListItemBig;->mInvalidLayout:Z

    .line 323
    new-instance v0, Lcom/htc/android/mail/MailListItemBig$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailListItemBig$1;-><init>(Lcom/htc/android/mail/MailListItemBig;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->checkEvent:Landroid/view/View$OnClickListener;

    .line 335
    new-instance v0, Lcom/htc/android/mail/MailListItemBig$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailListItemBig$2;-><init>(Lcom/htc/android/mail/MailListItemBig;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->checkEventChild:Landroid/view/View$OnClickListener;

    .line 345
    new-instance v0, Lcom/htc/android/mail/MailListItemBig$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailListItemBig$3;-><init>(Lcom/htc/android/mail/MailListItemBig;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->checkEventBig:Landroid/view/View$OnClickListener;

    .line 379
    new-instance v0, Lcom/htc/android/mail/MailListItemBig$4;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/MailListItemBig$4;-><init>(Lcom/htc/android/mail/MailListItemBig;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->flagEvent:Landroid/view/View$OnClickListener;

    .line 516
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->idIDX:I

    .line 517
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->readIDX:I

    .line 518
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->internaldateIDX:I

    .line 519
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->incAttachmentIDX:I

    .line 520
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->subjectIDX:I

    .line 521
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->subjtypeIDX:I

    .line 522
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->toIDX:I

    .line 523
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->toStringIDX:I

    .line 524
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->ccIDX:I

    .line 525
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->ccStringIDX:I

    .line 526
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->senderIDX:I

    .line 527
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->importanceIDX:I

    .line 528
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->messageClassIntIDX:I

    .line 529
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->flagsIDX:I

    .line 530
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->mailActIDX:I

    .line 531
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->downloadtotalsizeIDX:I

    .line 532
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->messagesizeIDX:I

    .line 533
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->readCountIDX:I

    .line 534
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->countIDX:I

    .line 535
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->mailboxIdIDX:I

    .line 536
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->accountIdIDX:I

    .line 537
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->groupIDX:I

    .line 538
    iput v1, p0, Lcom/htc/android/mail/MailListItemBig;->previewIDX:I

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/MailListItemBig;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/android/mail/MailListItemBig;->mPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/MailListItemBig;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/android/mail/MailListItemBig;->singleMailGroupView:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/MailListItemBig;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/htc/android/mail/MailListItemBig;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/MailListItemBig;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/htc/android/mail/MailListItemBig;->boxId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/htc/android/mail/MailListItemBig;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->group:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/mail/MailListItemBig;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private checkSortBySize(Landroid/database/Cursor;)V
    .locals 7
    .parameter "c"

    .prologue
    .line 428
    iget-boolean v3, p0, Lcom/htc/android/mail/MailListItemBig;->mShowSize:Z

    if-eqz v3, :cond_0

    .line 461
    iget v3, p0, Lcom/htc/android/mail/MailListItemBig;->messagesizeIDX:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 462
    .local v2, _messagesize:I
    iget-object v3, p0, Lcom/htc/android/mail/MailListItemBig;->mDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailListItemBig;->getContext()Landroid/content/Context;

    move-result-object v4

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    .end local v2           #_messagesize:I
    :goto_0
    return-void

    .line 464
    :cond_0
    iget v3, p0, Lcom/htc/android/mail/MailListItemBig;->internaldateIDX:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 465
    .local v0, _internaldate:J
    iget-object v3, p0, Lcom/htc/android/mail/MailListItemBig;->mDate:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    sget-boolean v5, Lcom/htc/android/mail/MailCommon;->TimeFormat24:Z

    invoke-static {v4, v0, v1, v5}, Lcom/htc/android/mail/Util;->getRelativeTimeSpanString2(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createColumnIndexCache(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/htc/android/mail/MailListItemBig;->showSender:Z

    if-eqz v0, :cond_0

    .line 563
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryIdIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->idIDX:I

    .line 564
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryFromIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->senderIDX:I

    .line 565
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummarySubjectIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->subjectIDX:I

    .line 566
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryInternaldateIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->internaldateIDX:I

    .line 567
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryFlagsIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->flagsIDX:I

    .line 568
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryReadIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->readIDX:I

    .line 569
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryDownloadtotalsizeIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->downloadtotalsizeIDX:I

    .line 570
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryMessagesizeIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->messagesizeIDX:I

    .line 571
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryIncAttachmentIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->incAttachmentIDX:I

    .line 572
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryMailActIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->mailActIDX:I

    .line 573
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummarySubjtypeIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->subjtypeIDX:I

    .line 574
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryImportanceIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->importanceIDX:I

    .line 575
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryMessageClassIntIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->messageClassIntIDX:I

    .line 576
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryAccountIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->accountIdIDX:I

    .line 577
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryMailboxIdIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->mailboxIdIDX:I

    .line 578
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryGroupIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->groupIDX:I

    .line 579
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryPreviewIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->previewIDX:I

    .line 603
    :goto_0
    return-void

    .line 581
    :cond_0
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutIdIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->idIDX:I

    .line 582
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutSubjectIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->subjectIDX:I

    .line 583
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutInternaldateIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->internaldateIDX:I

    .line 584
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutFlagsIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->flagsIDX:I

    .line 585
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutReadIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->readIDX:I

    .line 586
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutDownloadtotalsizeIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->downloadtotalsizeIDX:I

    .line 587
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutMessagesizeIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->messagesizeIDX:I

    .line 588
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutIncAttachmentIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->incAttachmentIDX:I

    .line 589
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutMailActIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->mailActIDX:I

    .line 590
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutSubjtypeIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->subjtypeIDX:I

    .line 591
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutImportanceIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->importanceIDX:I

    .line 592
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutMessageClassIntIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->messageClassIntIDX:I

    .line 593
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutAccountIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->accountIdIDX:I

    .line 594
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutMailboxIdIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->mailboxIdIDX:I

    .line 596
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutToIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->toIDX:I

    .line 597
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutToStringIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->toStringIDX:I

    .line 598
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutCcIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->ccIDX:I

    .line 599
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutCcString:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->ccStringIDX:I

    .line 600
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutGroupIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->groupIDX:I

    .line 601
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutPreviewIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->previewIDX:I

    goto :goto_0
.end method

.method private createColumnIndexCacheForThread(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 551
    const-string v0, "_id"

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/MailListItemBig;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->idIDX:I

    .line 552
    const-string v0, "readcount"

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/MailListItemBig;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->readCountIDX:I

    .line 553
    const-string v0, "_subject"

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/MailListItemBig;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->subjectIDX:I

    .line 554
    const-string v0, "_subjtype"

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/MailListItemBig;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->subjtypeIDX:I

    .line 555
    const-string v0, "count"

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/MailListItemBig;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->countIDX:I

    .line 556
    const-string v0, "_mailboxId"

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/MailListItemBig;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->mailboxIdIDX:I

    .line 557
    const-string v0, "_group"

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/MailListItemBig;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->groupIDX:I

    .line 558
    return-void
.end method

.method private createColumnIndexCacheGroup(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/htc/android/mail/MailListItemBig;->showSender:Z

    if-eqz v0, :cond_0

    .line 608
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadMsgIdIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->idIDX:I

    .line 609
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadFromIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->senderIDX:I

    .line 610
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadSubjectIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->subjectIDX:I

    .line 611
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadInternaldateIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->internaldateIDX:I

    .line 612
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadFlagsIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->flagsIDX:I

    .line 613
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadReadIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->readIDX:I

    .line 614
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadDownloadtotalsizeIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->downloadtotalsizeIDX:I

    .line 615
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadMessagesizeIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->messagesizeIDX:I

    .line 616
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadIncAttachmentIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->incAttachmentIDX:I

    .line 617
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadMailActIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->mailActIDX:I

    .line 618
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadSubjtypeIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->subjtypeIDX:I

    .line 619
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadImportanceIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->importanceIDX:I

    .line 620
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadMessageClassIntIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->messageClassIntIDX:I

    .line 621
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadAccountIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->accountIdIDX:I

    .line 622
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadMailboxIdIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->mailboxIdIDX:I

    .line 623
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadGroupIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->groupIDX:I

    .line 624
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryThreadPreviewIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->previewIDX:I

    .line 648
    :goto_0
    return-void

    .line 626
    :cond_0
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadMsgIdIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->idIDX:I

    .line 627
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadSubjectIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->subjectIDX:I

    .line 628
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadInternaldateIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->internaldateIDX:I

    .line 629
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadFlagsIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->flagsIDX:I

    .line 630
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadReadIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->readIDX:I

    .line 631
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadDownloadtotalsizeIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->downloadtotalsizeIDX:I

    .line 632
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadMessagesizeIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->messagesizeIDX:I

    .line 633
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadIncAttachmentIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->incAttachmentIDX:I

    .line 634
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadMailActIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->mailActIDX:I

    .line 635
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadSubjtypeIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->subjtypeIDX:I

    .line 636
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadImportanceIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->importanceIDX:I

    .line 637
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadMessageClassIntIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->messageClassIntIDX:I

    .line 638
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadAccountIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->accountIdIDX:I

    .line 639
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadMailboxIdIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->mailboxIdIDX:I

    .line 641
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadToIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->toIDX:I

    .line 642
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadToStringIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->toStringIDX:I

    .line 643
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadCcIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->ccIDX:I

    .line 644
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadCcString:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->ccStringIDX:I

    .line 645
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadGroupIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->groupIDX:I

    .line 646
    sget v0, Lcom/htc/android/mail/MailProvider;->sSummaryOutThreadPreviewIdx:I

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->previewIDX:I

    goto :goto_0
.end method

.method private getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 4
    .parameter "c"
    .parameter "name"

    .prologue
    .line 541
    const/4 v1, -0x1

    .line 543
    .local v1, index:I
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 547
    :goto_0
    return v1

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/android/mail/MailListItemBig;->TAG:Ljava/lang/String;

    const-string v3, "catch exception"

    invoke-static {v2, v3, v0}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5
    .parameter "_mixAdd"
    .parameter "_addText"

    .prologue
    .line 476
    if-eqz p1, :cond_0

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 479
    :cond_0
    if-eqz p2, :cond_1

    .line 480
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 483
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    .local v2, nick:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/htc/android/mail/Headers;->splitMailAddress(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 486
    .local v1, mailaddr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    if-eqz p1, :cond_8

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 487
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 488
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 489
    if-nez v0, :cond_3

    .line 490
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 493
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 494
    if-nez v0, :cond_5

    .line 495
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 497
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/Mailaddress;

    iget-object v3, v3, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 500
    :cond_6
    if-eqz p2, :cond_7

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .end local v0           #i:I
    .end local v2           #nick:Ljava/lang/StringBuilder;
    :cond_7
    :goto_2
    return-object v2

    .line 507
    .restart local v2       #nick:Ljava/lang/StringBuilder;
    :cond_8
    if-eqz p2, :cond_9

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 508
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_2

    .line 510
    :cond_9
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private final init()V
    .locals 11

    .prologue
    const v8, 0x7f0900f0

    const/4 v10, 0x0

    .line 172
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900f1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    .line 173
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900f9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mSubject:Landroid/widget/TextView;

    .line 174
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900fa

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mDate:Landroid/widget/TextView;

    .line 176
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900fb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mDel:Landroid/widget/CheckBox;

    .line 177
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900f7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mAttachIcon:Landroid/widget/ImageView;

    .line 178
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900f5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->lowPriorityBtn:Landroid/widget/ImageView;

    .line 179
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900f6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->highPriorityBtn:Landroid/widget/ImageView;

    .line 180
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900f4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->meetingBtn:Landroid/widget/ImageView;

    .line 181
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900f8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->flagBtn:Landroid/widget/ToggleButton;

    .line 182
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900fd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->flagBigArea:Landroid/view/View;

    .line 183
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900ec

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->accountIndicator:Landroid/widget/ImageView;

    .line 184
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 185
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 186
    .local v0, linearlayout_1x2:Landroid/widget/LinearLayout;
    iget-boolean v5, p0, Lcom/htc/android/mail/MailListItemBig;->singleMailGroupView:Z

    if-nez v5, :cond_2

    .line 187
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900ea

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    .line 192
    :goto_0
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sget v6, Lcom/htc/android/mail/Util;->EXTRA_SPACE_FOR_MAIL_ITEM:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 193
    .local v3, targetHeight:I
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 194
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    .line 199
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    const v7, 0x203003d

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 200
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListItemBig;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 201
    .local v4, topPadding:I
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListItemBig;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08004a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 202
    .local v2, rightMargin:I
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    invoke-virtual {v5, v10, v4, v2, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 203
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailListItemBig;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f80

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 204
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    .end local v0           #linearlayout_1x2:Landroid/widget/LinearLayout;
    .end local v2           #rightMargin:I
    .end local v3           #targetHeight:I
    .end local v4           #topPadding:I
    :cond_0
    iget-boolean v5, p0, Lcom/htc/android/mail/MailListItemBig;->mSearchSvrMail:Z

    if-eqz v5, :cond_1

    .line 208
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 209
    .restart local v0       #linearlayout_1x2:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 210
    .local v1, para:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListItemBig;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x205004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v7, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v8, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 215
    .end local v0           #linearlayout_1x2:Landroid/widget/LinearLayout;
    .end local v1           #para:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900bc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    .line 216
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->checkEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    const-string v8, "mail_checkbox_no_on_press"

    const v9, 0x7f02002c

    invoke-static {v7, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->cboxParentLayout:Landroid/widget/FrameLayout;

    .line 223
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->cboxParentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 224
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->cboxParentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, -0x1

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 225
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->cboxParentLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->cboxParentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->cboxParentLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->checkEventBig:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900fc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->checkEventBig:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAILBODY_PREVIEW_FLAG:Z

    if-eqz v5, :cond_3

    .line 233
    iget v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreviewLinesNum:I

    invoke-direct {p0, v5}, Lcom/htc/android/mail/MailListItemBig;->updatePreviewLine(I)V

    .line 237
    :goto_1
    return-void

    .line 189
    .restart local v0       #linearlayout_1x2:Landroid/widget/LinearLayout;
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f090100

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    goto/16 :goto_0

    .line 235
    .end local v0           #linearlayout_1x2:Landroid/widget/LinearLayout;
    :cond_3
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/htc/android/mail/MailListItemBig;->updatePreviewItemLayout(I)V

    goto :goto_1
.end method

.method private setCheckBox(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 394
    iget v0, p0, Lcom/htc/android/mail/MailListItemBig;->mark_mode:I

    if-nez v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mDel:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mDel:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    :cond_1
    :goto_0
    return-void

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->flagBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->flagBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->flagBigArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->flagBigArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->lowPriorityBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->lowPriorityBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->highPriorityBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->highPriorityBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->meetingBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->meetingBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    :cond_7
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    :cond_8
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mAttachIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mAttachIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    :cond_9
    sget v0, Lcom/htc/android/mail/Mail;->curTheme:I

    packed-switch v0, :pswitch_data_0

    .line 414
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mDel:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 418
    if-eqz p1, :cond_b

    .line 419
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mDel:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 408
    :pswitch_0
    iget v0, p0, Lcom/htc/android/mail/MailListItemBig;->mark_mode:I

    if-ne v0, v3, :cond_a

    .line 409
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mDel:Landroid/widget/CheckBox;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_1

    .line 411
    :cond_a
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mDel:Landroid/widget/CheckBox;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_1

    .line 421
    :cond_b
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mDel:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreviewItemLayout(I)V
    .locals 11
    .parameter "visible"

    .prologue
    const/16 v6, 0x8

    const/4 v10, 0x2

    const v9, 0x7f08000e

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 241
    if-nez p1, :cond_9

    .line 242
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    :cond_0
    iget-boolean v5, p0, Lcom/htc/android/mail/MailListItemBig;->singleMailGroupView:Z

    if-nez v5, :cond_6

    .line 246
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900ea

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    .line 251
    :goto_0
    iget v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreviewLinesNum:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreviewLinesNum:I

    if-ne v5, v10, :cond_8

    .line 252
    :cond_1
    iget v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreviewLinesNum:I

    if-ne v5, v10, :cond_7

    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sget v6, Lcom/htc/android/mail/Util;->EXTRA_SPACE_FOR_MAIL_ITEM:I

    add-int v4, v5, v6

    .line 255
    .local v4, targetHeight:I
    :goto_1
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v8, :cond_2

    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v4, :cond_3

    .line 256
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 259
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    .end local v4           #targetHeight:I
    :cond_3
    :goto_2
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x8a

    if-eq v5, v6, :cond_5

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xe

    if-eq v5, v6, :cond_5

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xf

    if-eq v5, v6, :cond_5

    .line 289
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListItemBig;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 290
    .local v1, marginTop:I
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 291
    .local v3, para:Landroid/widget/FrameLayout$LayoutParams;
    iget v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreviewLinesNum:I

    if-lez v5, :cond_d

    .end local v1           #marginTop:I
    :goto_3
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 292
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-virtual {p0}, Lcom/htc/android/mail/MailListItemBig;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080046

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 295
    .local v2, paddingTop:I
    iget-boolean v5, p0, Lcom/htc/android/mail/MailListItemBig;->mSearchSvrMail:Z

    if-nez v5, :cond_4

    .line 296
    iget v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreviewLinesNum:I

    if-lez v5, :cond_e

    .line 298
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900f0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 299
    .local v0, linearlayout_1x2:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 305
    .end local v0           #linearlayout_1x2:Landroid/widget/LinearLayout;
    .end local v2           #paddingTop:I
    .end local v3           #para:Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    return-void

    .line 248
    :cond_6
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f090100

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    goto/16 :goto_0

    .line 252
    :cond_7
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sget v6, Lcom/htc/android/mail/Util;->EXTRA_SPACE_FOR_MAIL_ITEM:I

    add-int v4, v5, v6

    goto/16 :goto_1

    .line 261
    :cond_8
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v8, :cond_3

    .line 262
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 263
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 265
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 268
    :cond_9
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_a

    .line 269
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    :cond_a
    iget-boolean v5, p0, Lcom/htc/android/mail/MailListItemBig;->singleMailGroupView:Z

    if-nez v5, :cond_c

    .line 272
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f0900ea

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    .line 276
    :goto_5
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v8, :cond_b

    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    if-eq v5, v6, :cond_3

    .line 277
    :cond_b
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 279
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 282
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 274
    :cond_c
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v6, 0x7f090100

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    goto :goto_5

    .line 291
    .restart local v1       #marginTop:I
    .restart local v3       #para:Landroid/widget/FrameLayout$LayoutParams;
    :cond_d
    div-int/lit8 v1, v1, 0x2

    goto/16 :goto_3

    .line 296
    .end local v1           #marginTop:I
    .restart local v2       #paddingTop:I
    :cond_e
    div-int/lit8 v2, v2, 0x2

    goto/16 :goto_4
.end method

.method private updatePreviewLine(I)V
    .locals 3
    .parameter "line"

    .prologue
    const/4 v0, 0x5

    .line 1041
    iget-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1042
    if-gtz p1, :cond_1

    .line 1043
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/htc/android/mail/MailListItemBig;->updatePreviewItemLayout(I)V

    .line 1060
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1045
    .restart local p1
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1053
    iget-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinLines(I)V

    .line 1054
    iget-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    if-le p1, v0, :cond_2

    move p1, v0

    .end local p1
    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1057
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/MailListItemBig;->updatePreviewItemLayout(I)V

    goto :goto_0

    .line 1047
    .restart local p1
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLines(I)V

    goto :goto_1

    .line 1050
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLines(I)V

    goto :goto_1

    .line 1045
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final bind(Landroid/database/Cursor;ILcom/htc/android/mail/util/SelectedMailMessages;Lcom/htc/android/mail/util/SelectedMailGroups;)V
    .locals 32
    .parameter "c"
    .parameter "tabInfoId"
    .parameter "selectedMessages"
    .parameter "seletectedGroups"

    .prologue
    .line 682
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/MailListItemBig;->mPosition:I

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 684
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailListItemBig;->init()V

    .line 687
    :cond_0
    const/16 v3, 0x3ea

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->accountIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->accountIndicator:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 693
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->idIDX:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 694
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailListItemBig;->createColumnIndexCacheForThread(Landroid/database/Cursor;)V

    .line 697
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->idIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/android/mail/MailListItemBig;->mMessageId:J

    .line 698
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->readCountIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 699
    .local v27, readCount:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->countIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 700
    .local v15, count:I
    move/from16 v0, v27

    if-ne v0, v15, :cond_6

    .line 701
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/MailListItemBig;->_read:I

    .line 706
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eq v3, v4, :cond_3

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 709
    :cond_3
    sget v3, Lcom/htc/android/mail/MailProvider;->sSummaryThreadSubjectIdx:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 710
    .local v9, Subject:Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string v3, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 711
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailListItemBig;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0203

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 714
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v4, 0x7f0900f1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v4, 0x7f0900f9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 718
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->mailboxIdIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 719
    .local v24, mailboxId:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->groupIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/htc/android/mail/util/SelectedMailGroups;->groupCheckboxChecked(JLjava/lang/String;I)Z

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/MailListItemBig;->setCheckBox(Z)V

    .line 1038
    .end local v9           #Subject:Ljava/lang/String;
    .end local v15           #count:I
    .end local v24           #mailboxId:J
    .end local v27           #readCount:I
    :goto_1
    return-void

    .line 703
    .restart local v15       #count:I
    .restart local v27       #readCount:I
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/MailListItemBig;->_read:I

    goto :goto_0

    .line 721
    .end local v15           #count:I
    .end local v27           #readCount:I
    :cond_7
    const/16 v3, 0x3f0

    move/from16 v0, p2

    if-ne v0, v3, :cond_c

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->accountIndicator:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    sget v3, Lcom/htc/android/mail/MailProvider;->sSummaryGroupsIdIdx:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/android/mail/MailListItemBig;->mMessageId:J

    .line 725
    sget v3, Lcom/htc/android/mail/MailProvider;->sSummaryGroupsReadCountIdx:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 726
    .restart local v27       #readCount:I
    sget v3, Lcom/htc/android/mail/MailProvider;->sSummaryGroupsCountIdx:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 727
    .restart local v15       #count:I
    move/from16 v0, v27

    if-ne v0, v15, :cond_b

    .line 728
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/MailListItemBig;->_read:I

    .line 733
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eq v3, v4, :cond_8

    .line 734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 736
    :cond_8
    sget v3, Lcom/htc/android/mail/MailProvider;->sSummaryGroupsTitleIdx:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 737
    .local v31, title:Ljava/lang/String;
    if-eqz v31, :cond_9

    const-string v3, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 738
    :cond_9
    const-string v31, ""

    .line 740
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-static {v3, v0, v4}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 742
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v4, 0x7f0900f1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v4, 0x7f0900f9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 745
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/MailListItemBig;->setCheckBox(Z)V

    goto/16 :goto_1

    .line 730
    .end local v31           #title:Ljava/lang/String;
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/MailListItemBig;->_read:I

    goto :goto_2

    .line 749
    .end local v15           #count:I
    .end local v27           #readCount:I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/MailListItemBig;->singleMailGroupView:Z

    if-eqz v3, :cond_22

    .line 751
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->idIDX:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->toIDX:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/MailListItemBig;->showSender:Z

    if-nez v3, :cond_e

    .line 752
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailListItemBig;->createColumnIndexCacheGroup(Landroid/database/Cursor;)V

    .line 762
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->groupIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->group:Ljava/lang/String;

    .line 763
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->accountIdIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/android/mail/MailListItemBig;->mAccountId:J

    .line 764
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/MailListItemBig;->mAccountId:J

    invoke-static {v3, v4}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mAccount:Lcom/htc/android/mail/Account;

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailListItemBig;->setAccountIndicator()V

    .line 767
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->idIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/android/mail/MailListItemBig;->mMessageId:J

    .line 768
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->mailboxIdIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/android/mail/MailListItemBig;->boxId:J

    .line 769
    if-eqz p3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_f

    .line 770
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/MailListItemBig;->mMessageId:J

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/htc/android/mail/util/SelectedMailMessages;->checkboxChecked(J)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 777
    :cond_f
    :goto_4
    if-eqz p4, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_10

    .line 778
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/MailListItemBig;->boxId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/MailListItemBig;->group:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/android/mail/MailListItemBig;->mMessageId:J

    move-object/from16 v3, p4

    invoke-virtual/range {v3 .. v8}, Lcom/htc/android/mail/util/SelectedMailGroups;->childCheckboxChecked(JLjava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 785
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->readIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/MailListItemBig;->_read:I

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mReadStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    if-eqz v3, :cond_11

    .line 787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mReadStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/MailListItemBig;->mMessageId:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->get(J)I

    move-result v21

    .line 788
    .local v21, i:I
    const/4 v3, -0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_11

    .line 789
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailListItemBig;->_read:I

    .line 793
    .end local v21           #i:I
    :cond_11
    sget-object v3, Lcom/htc/android/mail/MailCommon;->c_unread_primary:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_12

    .line 794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/android/mail/MailCommon;->getMailListItemStyle(Landroid/content/Context;)V

    .line 796
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->_read:I

    if-nez v3, :cond_28

    .line 797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    const v5, 0x20300bb

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mSubject:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    const v5, 0x203003b

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mDate:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    const v5, 0x203003b

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    const v5, 0x20300c6

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 803
    const/16 v3, 0x3e

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v4, :cond_13

    const/16 v3, 0xd2

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v4, :cond_13

    .line 805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    sget v4, Lcom/htc/android/mail/MailCommon;->COLOR_DEFAULT_ITEM_READ:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 820
    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->incAttachmentIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 822
    .local v22, includeAttach:I
    if-lez v22, :cond_29

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mAttachIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mAttachIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 829
    :cond_14
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->subjectIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->_subject:Ljava/lang/String;

    .line 832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->_subject:Ljava/lang/String;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->_subject:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 833
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/MailListItemBig;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0203

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->_subject:Ljava/lang/String;

    .line 836
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->subjtypeIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 837
    .local v23, mSubjType:Ljava/lang/String;
    if-eqz v23, :cond_17

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->_subject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->_subject:Ljava/lang/String;

    .line 841
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/MailListItemBig;->mSpan:Z

    if-eqz v3, :cond_2b

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->_subject:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 843
    .local v20, fromLow:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->searchKey:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    .line 844
    .local v30, start:I
    if-ltz v30, :cond_2a

    .line 845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->searchKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v18, v30, v3

    .line 846
    .local v18, end:I
    new-instance v3, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->_subject:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mMarkedName:Landroid/text/SpannableString;

    .line 847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    const-string v5, "text_selection_highlight"

    const v6, 0x20a001b

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 848
    .local v14, color:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mMarkedName:Landroid/text/SpannableString;

    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v4, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    move/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mMarkedName:Landroid/text/SpannableString;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    move/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mSubject:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->mMarkedName:Landroid/text/SpannableString;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    .end local v14           #color:I
    .end local v18           #end:I
    .end local v20           #fromLow:Ljava/lang/String;
    .end local v30           #start:I
    :goto_8
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailListItemBig;->checkSortBySize(Landroid/database/Cursor;)V

    .line 862
    const/16 v19, 0x0

    .line 863
    .local v19, fromEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/MailListItemBig;->showSender:Z

    if-nez v3, :cond_2f

    .line 864
    const/4 v12, 0x0

    .local v12, _to:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, _toString:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, _cc:Ljava/lang/String;
    const/4 v11, 0x0

    .line 865
    .local v11, _ccString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->toIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 866
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->toStringIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 867
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->ccIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 868
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->ccStringIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 870
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/android/mail/MailListItemBig;->getDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 871
    .local v17, displayTo:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/htc/android/mail/MailListItemBig;->getDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 872
    .local v16, displayCc:Ljava/lang/StringBuilder;
    if-nez v17, :cond_2c

    if-nez v16, :cond_2c

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    const v4, 0x7f0b0204

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 909
    .end local v10           #_cc:Ljava/lang/String;
    .end local v11           #_ccString:Ljava/lang/String;
    .end local v12           #_to:Ljava/lang/String;
    .end local v13           #_toString:Ljava/lang/String;
    .end local v16           #displayCc:Ljava/lang/StringBuilder;
    .end local v17           #displayTo:Ljava/lang/StringBuilder;
    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->importanceIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/MailListItemBig;->priorityFlag:I

    .line 910
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->messageClassIntIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 911
    .local v26, messageClassInt:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/MailListItemBig;->meetingFlag:I

    .line 913
    const/4 v3, 0x6

    move/from16 v0, v26

    if-eq v0, v3, :cond_18

    const/16 v3, 0x14

    move/from16 v0, v26

    if-eq v0, v3, :cond_18

    const/16 v3, 0x15

    move/from16 v0, v26

    if-ne v0, v3, :cond_19

    .line 916
    :cond_18
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/MailListItemBig;->meetingFlag:I

    .line 919
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagsIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/MailListItemBig;->flags:I

    .line 920
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFlagStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    if-eqz v3, :cond_1a

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFlagStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/MailListItemBig;->mMessageId:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->get(J)I

    move-result v21

    .line 922
    .restart local v21       #i:I
    const/4 v3, -0x1

    move/from16 v0, v21

    if-eq v0, v3, :cond_1a

    .line 923
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/MailListItemBig;->flags:I

    .line 934
    .end local v21           #i:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBtn:Landroid/widget/ToggleButton;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->flagEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBigArea:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->flagEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_35

    .line 937
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->flags:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBtn:Landroid/widget/ToggleButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 942
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBtn:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 943
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBigArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBigArea:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 945
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/MailListItemBig;->mSearchSvrMail:Z

    if-eqz v3, :cond_34

    .line 946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBtn:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 950
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBtn:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setFocusable(Z)V

    .line 956
    :cond_1d
    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->priorityFlag:I

    packed-switch v3, :pswitch_data_0

    .line 971
    :cond_1e
    :goto_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->meetingFlag:I

    packed-switch v3, :pswitch_data_1

    .line 980
    :cond_1f
    :goto_e
    if-eqz p3, :cond_3a

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/MailListItemBig;->mMessageId:J

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/htc/android/mail/util/SelectedMailMessages;->checkboxChecked(J)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/MailListItemBig;->setCheckBox(Z)V

    .line 982
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->mailActIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/MailListItemBig;->mailactFlag:I

    .line 983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v4, 0x7f0900ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 984
    .local v28, reply_icon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->mailactFlag:I

    packed-switch v3, :pswitch_data_2

    .line 1033
    :cond_20
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/MailListItemBig;->mInvalidLayout:Z

    if-eqz v3, :cond_21

    .line 1034
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->mPreviewLinesNum:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/MailListItemBig;->updatePreviewLine(I)V

    .line 1035
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/android/mail/MailListItemBig;->mInvalidLayout:Z

    .line 1037
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/mail/MailListItemBig;->previewIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 754
    .end local v19           #fromEmail:Ljava/lang/String;
    .end local v22           #includeAttach:I
    .end local v23           #mSubjType:Ljava/lang/String;
    .end local v26           #messageClassInt:I
    .end local v28           #reply_icon:Landroid/widget/ImageView;
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/MailListItemBig;->isConversationChildView:Z

    if-nez v3, :cond_23

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/MailListItemBig;->isConversationGroupView:Z

    if-eqz v3, :cond_24

    .line 755
    :cond_23
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailListItemBig;->createColumnIndexCacheGroup(Landroid/database/Cursor;)V

    goto/16 :goto_3

    .line 758
    :cond_24
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->idIDX:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->toIDX:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/MailListItemBig;->showSender:Z

    if-nez v3, :cond_e

    .line 759
    :cond_25
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailListItemBig;->createColumnIndexCache(Landroid/database/Cursor;)V

    goto/16 :goto_3

    .line 773
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    .line 781
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    .line 808
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    const v5, 0x20300b1

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 809
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mSubject:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    const v5, 0x20300af

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 810
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mDate:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    const v5, 0x20300af

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mPreview:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    const v5, 0x20300c3

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 814
    const/16 v3, 0x3e

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v4, :cond_13

    const/16 v3, 0xd2

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v3, v4, :cond_13

    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mItemLayout:Landroid/widget/FrameLayout;

    sget v4, Lcom/htc/android/mail/MailCommon;->COLOR_SKT_ITEM_READ:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_6

    .line 825
    .restart local v22       #includeAttach:I
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mAttachIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mAttachIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 852
    .restart local v20       #fromLow:Ljava/lang/String;
    .restart local v23       #mSubjType:Ljava/lang/String;
    .restart local v30       #start:I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mSubject:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->_subject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 855
    .end local v20           #fromLow:Ljava/lang/String;
    .end local v30           #start:I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mSubject:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->_subject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 875
    .restart local v10       #_cc:Ljava/lang/String;
    .restart local v11       #_ccString:Ljava/lang/String;
    .restart local v12       #_to:Ljava/lang/String;
    .restart local v13       #_toString:Ljava/lang/String;
    .restart local v16       #displayCc:Ljava/lang/StringBuilder;
    .restart local v17       #displayTo:Ljava/lang/StringBuilder;
    .restart local v19       #fromEmail:Ljava/lang/String;
    :cond_2c
    if-eqz v17, :cond_2e

    .line 876
    if-eqz v16, :cond_2d

    .line 877
    const-string v3, ", "

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 879
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 881
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 886
    .end local v10           #_cc:Ljava/lang/String;
    .end local v11           #_ccString:Ljava/lang/String;
    .end local v12           #_to:Ljava/lang/String;
    .end local v13           #_toString:Ljava/lang/String;
    .end local v16           #displayCc:Ljava/lang/StringBuilder;
    .end local v17           #displayTo:Ljava/lang/StringBuilder;
    :cond_2f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/mail/MailListItemBig;->senderIDX:I

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 887
    .local v29, sender:Ljava/lang/String;
    if-nez v29, :cond_30

    .line 888
    const-string v29, ""

    .line 889
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/MailListItemBig;->mSpan:Z

    if-eqz v3, :cond_32

    .line 890
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 891
    .restart local v20       #fromLow:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->searchKey:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    .line 892
    .restart local v30       #start:I
    if-ltz v30, :cond_31

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->searchKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v18, v30, v3

    .line 894
    .restart local v18       #end:I
    new-instance v3, Landroid/text/SpannableString;

    move-object/from16 v0, v29

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mMarkedName:Landroid/text/SpannableString;

    .line 895
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    const-string v5, "text_selection_highlight"

    const v6, 0x20a001b

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 896
    .restart local v14       #color:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mMarkedName:Landroid/text/SpannableString;

    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v4, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    move/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mMarkedName:Landroid/text/SpannableString;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    move/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailListItemBig;->mMarkedName:Landroid/text/SpannableString;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 900
    .end local v14           #color:I
    .end local v18           #end:I
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 903
    .end local v20           #fromLow:Ljava/lang/String;
    .end local v30           #start:I
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->mFrom:Landroid/widget/TextView;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 940
    .end local v29           #sender:Ljava/lang/String;
    .restart local v26       #messageClassInt:I
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBtn:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_a

    .line 948
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBtn:Landroid/widget/ToggleButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setClickable(Z)V

    goto/16 :goto_b

    .line 952
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBtn:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_36

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBtn:Landroid/widget/ToggleButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 953
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBigArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->flagBigArea:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 958
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->highPriorityBtn:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->highPriorityBtn:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 959
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->lowPriorityBtn:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->lowPriorityBtn:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 962
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->highPriorityBtn:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->highPriorityBtn:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 963
    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->lowPriorityBtn:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->lowPriorityBtn:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 966
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->lowPriorityBtn:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->lowPriorityBtn:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 967
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->highPriorityBtn:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->highPriorityBtn:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 973
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->meetingBtn:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->meetingBtn:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 976
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->meetingBtn:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailListItemBig;->meetingBtn:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 980
    :cond_3a
    const/4 v3, 0x0

    goto/16 :goto_f

    .line 986
    .restart local v28       #reply_icon:Landroid/widget/ImageView;
    :pswitch_5
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_20

    const/16 v3, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_10

    .line 989
    :pswitch_6
    const v3, 0x20809af

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 990
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_10

    .line 993
    :pswitch_7
    const v3, 0x20809aa

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 994
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_10

    .line 956
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 971
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 984
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public disableSpannable()V
    .locals 1

    .prologue
    .line 1082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/MailListItemBig;->mSpan:Z

    .line 1083
    return-void
.end method

.method public enableSpannable(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailListItemBig;->mSpan:Z

    .line 1078
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->searchKey:Ljava/lang/String;

    .line 1079
    return-void
.end method

.method public final getFlags()I
    .locals 1

    .prologue
    .line 1069
    iget v0, p0, Lcom/htc/android/mail/MailListItemBig;->mFlags:I

    return v0
.end method

.method public getMailId()I
    .locals 2

    .prologue
    .line 1086
    iget-wide v0, p0, Lcom/htc/android/mail/MailListItemBig;->mMessageId:J

    long-to-int v0, v0

    return v0
.end method

.method public final isRead()I
    .locals 1

    .prologue
    .line 1073
    iget v0, p0, Lcom/htc/android/mail/MailListItemBig;->_read:I

    return v0
.end method

.method markStar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 352
    iget v5, p0, Lcom/htc/android/mail/MailListItemBig;->flags:I

    if-ne v5, v6, :cond_1

    .line 353
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/android/mail/MailListItemBig;->flags:I

    .line 357
    :goto_0
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v2

    .line 358
    .local v2, mRequestController:Lcom/htc/android/mail/AbsRequestController;
    new-instance v3, Lcom/htc/android/mail/MailMessage;

    iget-wide v5, p0, Lcom/htc/android/mail/MailListItemBig;->mMessageId:J

    invoke-direct {v3, v5, v6, v7, v7}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 359
    .local v3, mailMessage:Lcom/htc/android/mail/MailMessage;
    iget-wide v5, p0, Lcom/htc/android/mail/MailListItemBig;->mAccountId:J

    invoke-virtual {v3, v5, v6}, Lcom/htc/android/mail/MailMessage;->setAccountId(J)V

    .line 360
    iget-wide v5, p0, Lcom/htc/android/mail/MailListItemBig;->boxId:J

    invoke-virtual {v3, v5, v6}, Lcom/htc/android/mail/MailMessage;->setMailboxId(J)V

    .line 361
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->group:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/htc/android/mail/MailMessage;->setGroup(Ljava/lang/String;)V

    .line 362
    iget-object v5, p0, Lcom/htc/android/mail/MailListItemBig;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/android/mail/MailListItemBig;->boxId:J

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v1

    .line 363
    .local v1, mMailbox:Lcom/htc/android/mail/Mailbox;
    iget v5, p0, Lcom/htc/android/mail/MailListItemBig;->flags:I

    iput v5, v3, Lcom/htc/android/mail/MailMessage;->flags:I

    .line 364
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v0, b:Landroid/os/Bundle;
    const-string v5, "Mailbox"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 366
    const-string v5, "MailMessage"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 367
    const-string v5, "oldRead"

    iget v6, p0, Lcom/htc/android/mail/MailListItemBig;->_read:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    new-instance v4, Lcom/htc/android/mail/Request;

    invoke-direct {v4}, Lcom/htc/android/mail/Request;-><init>()V

    .line 369
    .local v4, r:Lcom/htc/android/mail/Request;
    const/16 v5, 0x8

    iput v5, v4, Lcom/htc/android/mail/Request;->command:I

    .line 370
    iput-object v0, v4, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 371
    iget-wide v5, p0, Lcom/htc/android/mail/MailListItemBig;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 372
    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/RequestController;->markStar(Lcom/htc/android/mail/Request;)V

    .line 377
    :cond_0
    return-void

    .line 355
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #mMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v2           #mRequestController:Lcom/htc/android/mail/AbsRequestController;
    .end local v3           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v4           #r:Lcom/htc/android/mail/Request;
    :cond_1
    iput v6, p0, Lcom/htc/android/mail/MailListItemBig;->flags:I

    goto :goto_0
.end method

.method setAccountIndicator()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 651
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mAccount:Lcom/htc/android/mail/Account;

    if-nez v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account-null>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/android/mail/MailListItemBig;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getColorIdx()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getColorIdx()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_3

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "out-of-bond>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailListItemBig;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getColorIdx()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_3
    iget-boolean v0, p0, Lcom/htc/android/mail/MailListItemBig;->mShowAccountIndicator:Z

    if-nez v0, :cond_4

    .line 660
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->accountIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 661
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->accountIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 664
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->accountIndicator:Landroid/widget/ImageView;

    sget-object v1, Lcom/htc/android/mail/MailCommon;->account_drawable:[[I

    iget-object v2, p0, Lcom/htc/android/mail/MailListItemBig;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getColorGroupIdx()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/android/mail/MailListItemBig;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getColorIdx()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 665
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->accountIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->accountIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChildCheckboxEvent()V
    .locals 3

    .prologue
    .line 313
    new-instance v0, Lcom/htc/android/mail/MailConversationExpandListAdapter$ConversationChildTag;

    invoke-direct {v0}, Lcom/htc/android/mail/MailConversationExpandListAdapter$ConversationChildTag;-><init>()V

    .line 314
    .local v0, data:Lcom/htc/android/mail/MailConversationExpandListAdapter$ConversationChildTag;
    iget-wide v1, p0, Lcom/htc/android/mail/MailListItemBig;->mAccountId:J

    iput-wide v1, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter$ConversationChildTag;->accountId:J

    .line 315
    iget-wide v1, p0, Lcom/htc/android/mail/MailListItemBig;->boxId:J

    iput-wide v1, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter$ConversationChildTag;->mailboxId:J

    .line 316
    iget-wide v1, p0, Lcom/htc/android/mail/MailListItemBig;->mMessageId:J

    iput-wide v1, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter$ConversationChildTag;->messageId:J

    .line 317
    iget-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->group:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/android/mail/MailConversationExpandListAdapter$ConversationChildTag;->group:Ljava/lang/String;

    .line 318
    iget-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v2, 0x7f0900bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    .line 319
    iget-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/htc/android/mail/MailListItemBig;->checkEventChild:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 321
    return-void
.end method

.method public setConversationChildView(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/htc/android/mail/MailListItemBig;->isConversationChildView:Z

    .line 156
    return-void
.end method

.method public setConversationGroupView(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/htc/android/mail/MailListItemBig;->isConversationGroupView:Z

    .line 152
    return-void
.end method

.method setFromSearchSvrMail(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/htc/android/mail/MailListItemBig;->mSearchSvrMail:Z

    .line 160
    return-void
.end method

.method public setMailListCheckBoxEvent()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    .line 309
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->cbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/htc/android/mail/MailListItemBig;->checkEvent:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    return-void
.end method

.method public setMessageStatusMap(Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    const-string v0, "READ"

    invoke-virtual {p1, v0}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mReadStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    .line 142
    const-string v0, "FLAG"

    invoke-virtual {p1, v0}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->mFlagStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    .line 144
    :cond_0
    return-void
.end method

.method public setPreviewLinesNumber(I)V
    .locals 1
    .parameter "line"

    .prologue
    .line 129
    iget v0, p0, Lcom/htc/android/mail/MailListItemBig;->mPreviewLinesNum:I

    if-eq p1, v0, :cond_0

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailListItemBig;->mInvalidLayout:Z

    .line 132
    :cond_0
    if-ltz p1, :cond_1

    .line 133
    iput p1, p0, Lcom/htc/android/mail/MailListItemBig;->mPreviewLinesNum:I

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/MailListItemBig;->mPreviewLinesNum:I

    goto :goto_0
.end method

.method public setProtocol(I)V
    .locals 0
    .parameter "protocol"

    .prologue
    .line 163
    iput p1, p0, Lcom/htc/android/mail/MailListItemBig;->mProtocol:I

    .line 164
    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailListItemBig;->singleMailGroupView:Z

    .line 122
    return-void
.end method

.method public setShowAccountIndicator(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/htc/android/mail/MailListItemBig;->mShowAccountIndicator:Z

    .line 126
    return-void
.end method

.method setShowSender(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/htc/android/mail/MailListItemBig;->showSender:Z

    .line 148
    return-void
.end method

.method public setShowSize(Z)V
    .locals 0
    .parameter "showSize"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/htc/android/mail/MailListItemBig;->mShowSize:Z

    .line 168
    return-void
.end method

.method public showCheckBlock(Z)V
    .locals 5
    .parameter "show"

    .prologue
    const v4, 0x7f0900fc

    const v3, 0x7f0900ed

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 672
    if-eqz p1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 679
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/htc/android/mail/MailListItemBig;->viewRoot:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
