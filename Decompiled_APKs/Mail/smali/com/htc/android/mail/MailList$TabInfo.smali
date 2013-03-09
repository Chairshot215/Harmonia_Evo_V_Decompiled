.class public Lcom/htc/android/mail/MailList$TabInfo;
.super Ljava/lang/Object;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabInfo"
.end annotation


# instance fields
.field public mActivityCallback:Lcom/htc/android/mail/util/ActivityCallback;

.field public mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

.field public mColumn:Ljava/lang/String;

.field public mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

.field public mCursorContentObserver:Lcom/htc/android/mail/MailList$CursorContentObserver;

.field public mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

.field public mFooter:Landroid/widget/LinearLayout;

.field public mHaveFooter:Z

.field public mId:I

.field public mIndex:I

.field public mIsExpandListAdapter:Z

.field public mIsFullLoadComplete:Z

.field public mIsInvalidate:Z

.field public mIsQuickLoadComplete:Z

.field public mIsQuickLoadStart:Z

.field public mIsThreadTab:Z

.field protected mList:Lcom/htc/widget/HtcListView;

.field public mLoadFinishedTime:J

.field public mLoadFinishedTokenId:I

.field public mMailCount:I

.field public mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

.field public mMyDataSetObserver:Lcom/htc/android/mail/MailList$MyDataSetObserver;

.field public mNowTokenId:I

.field public mOrder:Ljava/lang/String;

.field public mPreMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

.field public mReadMessageIds:Lcom/htc/android/mail/util/IdStore;

.field protected mSearchWhere:Ljava/lang/String;

.field public mShowUnReadNumber:Z

.field protected mSortIndexToPositionForDefault:Landroid/util/SparseIntArray;

.field protected mSortIndexToPositionForOutBox:Landroid/util/SparseIntArray;

.field public mSortRule:Ljava/lang/String;

.field public mStubListViewId:I

.field public mUnReadNumber:I

.field public mWhere:Ljava/lang/String;

.field public sortColumn:Ljava/lang/String;

.field public sortOrder:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 6043
    iput-object p1, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6045
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mIndex:I

    .line 6059
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mWhere:Ljava/lang/String;

    .line 6060
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortRule:Ljava/lang/String;

    .line 6065
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mColumn:Ljava/lang/String;

    .line 6066
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mOrder:Ljava/lang/String;

    .line 6068
    iput-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mFooter:Landroid/widget/LinearLayout;

    .line 6069
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mStubListViewId:I

    .line 6072
    iput-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mMyDataSetObserver:Lcom/htc/android/mail/MailList$MyDataSetObserver;

    .line 6074
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSearchWhere:Ljava/lang/String;

    .line 6079
    const-string v0, "_internaldate"

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->sortColumn:Ljava/lang/String;

    .line 6080
    const-string v0, "desc"

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->sortOrder:Ljava/lang/String;

    .line 6086
    new-instance v0, Lcom/htc/android/mail/util/IdStore;

    invoke-direct {v0}, Lcom/htc/android/mail/util/IdStore;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mReadMessageIds:Lcom/htc/android/mail/util/IdStore;

    return-void
.end method


# virtual methods
.method public addSecondHeader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6108
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_1

    .line 6114
    :cond_0
    :goto_0
    return-void

    .line 6109
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/mail/Mailbox;->kind:I

    const v1, 0x7ffffffe

    if-ne v0, v1, :cond_2

    .line 6110
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList$TabInfo;->getEmptyMailboxHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 6111
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/mail/Mailbox;->kind:I

    const v1, 0x7ffffffb

    if-ne v0, v1, :cond_0

    .line 6112
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailList$TabInfo;->getOutMailboxHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "groupCursor"

    .prologue
    .line 6276
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildrenSortOrder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "column"
    .parameter "order"

    .prologue
    .line 6270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " collate nocase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _internaldate desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortRule:Ljava/lang/String;

    .line 6271
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortRule:Ljava/lang/String;

    return-object v0
.end method

.method public getChildrenUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 6280
    invoke-virtual {p0}, Lcom/htc/android/mail/MailList$TabInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenWhere(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "groupCursor"

    .prologue
    .line 6266
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mWhere:Ljava/lang/String;

    return-object v0
.end method

.method public getEmptyMailboxHeaderView()Landroid/view/View;
    .locals 6

    .prologue
    .line 6134
    iget-object v3, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mPartFactory:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$8300(Lcom/htc/android/mail/MailList;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x209005e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6135
    .local v1, secondHeader:Landroid/view/View;
    const v3, 0x2020105

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6136
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x7f0b0021

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 6137
    const v3, 0x2020104

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x208028a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6139
    const v3, 0x2020103

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6140
    .local v0, compose_block:Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 6141
    new-instance v3, Lcom/htc/android/mail/MailList$TabInfo$2;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/MailList$TabInfo$2;-><init>(Lcom/htc/android/mail/MailList$TabInfo;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6147
    return-object v1
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6151
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    if-nez v1, :cond_1

    .line 6152
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$2900()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getListView2>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6153
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    if-eqz v1, :cond_2

    .line 6155
    const v1, 0x7f0900e4

    iput v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mStubListViewId:I

    .line 6160
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mStubListViewId:I

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 6161
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    .line 6162
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/htc/android/mail/MailList$TabInfo$3;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/MailList$TabInfo$3;-><init>(Lcom/htc/android/mail/MailList$TabInfo;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 6169
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$2000(Lcom/htc/android/mail/MailList;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 6170
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 6171
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$8600(Lcom/htc/android/mail/MailList;)Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 6172
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 6174
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    return-object v1

    .line 6158
    :cond_2
    const v1, 0x7f0900e3

    iput v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mStubListViewId:I

    goto :goto_0
.end method

.method public getMailListTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6207
    const-string v0, ""

    return-object v0
.end method

.method public getOutMailboxHeaderView()Landroid/view/View;
    .locals 6

    .prologue
    .line 6117
    iget-object v3, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mPartFactory:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/htc/android/mail/MailList;->access$8300(Lcom/htc/android/mail/MailList;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x209005e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6118
    .local v1, secondHeader:Landroid/view/View;
    const v3, 0x2020105

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6119
    .local v2, textView:Landroid/widget/TextView;
    const v3, 0x7f0b0024

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 6120
    const v3, 0x2020104

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x2080b8b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6122
    const v3, 0x2020103

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6123
    .local v0, compose_block:Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 6124
    new-instance v3, Lcom/htc/android/mail/MailList$TabInfo$1;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/MailList$TabInfo$1;-><init>(Lcom/htc/android/mail/MailList$TabInfo;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6130
    return-object v1
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 6249
    invoke-static {}, Lcom/htc/android/mail/util/SummaryColumnsStore;->getInstance()Lcom/htc/android/mail/util/SummaryColumnsStore;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v1

    iget-boolean v1, v1, Lcom/htc/android/mail/Mailbox;->showSender:Z

    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    iget-object v3, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v3, v3, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v4, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/Account;->getPreviewLineNum(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/util/SummaryColumnsStore;->getProjectByType(ZZI)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 6096
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    iget v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 6097
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    iget v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mSearchUri:Landroid/net/Uri;

    .line 6099
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSortItemsIndexByIndex(Lcom/htc/android/mail/Mailbox;I)I
    .locals 4
    .parameter "mailbox"
    .parameter "index"

    .prologue
    const/4 v3, -0x1

    .line 6340
    iget-boolean v2, p1, Lcom/htc/android/mail/Mailbox;->showSender:Z

    if-eqz v2, :cond_1

    .line 6341
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortIndexToPositionForDefault:Landroid/util/SparseIntArray;

    .line 6345
    .local v1, sortIndexToPosition:Landroid/util/SparseIntArray;
    :goto_0
    const/4 v0, -0x1

    .line 6346
    .local v0, position:I
    invoke-virtual {v1, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 6347
    if-ne v0, v3, :cond_0

    .line 6348
    const/4 p2, 0x0

    .line 6350
    .end local p2
    :cond_0
    return p2

    .line 6343
    .end local v0           #position:I
    .end local v1           #sortIndexToPosition:Landroid/util/SparseIntArray;
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortIndexToPositionForOutBox:Landroid/util/SparseIntArray;

    .restart local v1       #sortIndexToPosition:Landroid/util/SparseIntArray;
    goto :goto_0
.end method

.method public getSortItemsIndexByPosition(Lcom/htc/android/mail/Mailbox;I)I
    .locals 3
    .parameter "mailbox"
    .parameter "position"

    .prologue
    .line 6370
    iget-boolean v2, p1, Lcom/htc/android/mail/Mailbox;->showSender:Z

    if-eqz v2, :cond_1

    .line 6371
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortIndexToPositionForDefault:Landroid/util/SparseIntArray;

    .line 6375
    .local v1, sortIndexToPosition:Landroid/util/SparseIntArray;
    :goto_0
    const/4 v0, -0x1

    .line 6376
    .local v0, index:I
    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 6377
    if-gez v0, :cond_0

    .line 6378
    const/4 v0, 0x0

    .line 6380
    :cond_0
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    return v2

    .line 6373
    .end local v0           #index:I
    .end local v1           #sortIndexToPosition:Landroid/util/SparseIntArray;
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortIndexToPositionForOutBox:Landroid/util/SparseIntArray;

    .restart local v1       #sortIndexToPosition:Landroid/util/SparseIntArray;
    goto :goto_0
.end method

.method public getSortItemsPositionByIndex(Lcom/htc/android/mail/Mailbox;I)I
    .locals 4
    .parameter "mailbox"
    .parameter "index"

    .prologue
    const/4 v3, -0x1

    .line 6355
    iget-boolean v2, p1, Lcom/htc/android/mail/Mailbox;->showSender:Z

    if-eqz v2, :cond_1

    .line 6356
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortIndexToPositionForDefault:Landroid/util/SparseIntArray;

    .line 6360
    .local v1, sortIndexToPosition:Landroid/util/SparseIntArray;
    :goto_0
    const/4 v0, -0x1

    .line 6361
    .local v0, position:I
    invoke-virtual {v1, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 6362
    if-ne v0, v3, :cond_0

    .line 6363
    const/4 v0, 0x0

    .line 6365
    :cond_0
    return v0

    .line 6358
    .end local v0           #position:I
    .end local v1           #sortIndexToPosition:Landroid/util/SparseIntArray;
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortIndexToPositionForOutBox:Landroid/util/SparseIntArray;

    .restart local v1       #sortIndexToPosition:Landroid/util/SparseIntArray;
    goto :goto_0
.end method

.method public getSortOrder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "column"
    .parameter "order"

    .prologue
    .line 6261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " collate nocase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _internaldate desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortRule:Ljava/lang/String;

    .line 6262
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortRule:Ljava/lang/String;

    return-object v0
.end method

.method public getSqlWhere()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6231
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailListTab;->mIsMailSearch:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6232
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    iget v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/android/mail/MailList$BasicTabInfo;->getSqlWhere()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v2, v2, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v2, v2, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    #calls: Lcom/htc/android/mail/MailList;->getSearchFilterSQLWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/MailList;->access$8700(Lcom/htc/android/mail/MailList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mWhere:Ljava/lang/String;

    .line 6233
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    #setter for: Lcom/htc/android/mail/MailList;->mCurrentSearchKey:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailList;->access$8802(Lcom/htc/android/mail/MailList;Ljava/lang/String;)Ljava/lang/String;

    .line 6234
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/MailList;->mFilterNeedRequery:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailList;->access$7102(Lcom/htc/android/mail/MailList;Z)Z

    .line 6240
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSqlWhere>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6241
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mWhere:Ljava/lang/String;

    return-object v0

    .line 6235
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    iget v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 6236
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    iget v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$BasicTabInfo;->getSqlWhere()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mWhere:Ljava/lang/String;

    .line 6237
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mWhere:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSearchWhere:Ljava/lang/String;

    .line 6238
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    const-string v1, ""

    #setter for: Lcom/htc/android/mail/MailList;->mCurrentSearchKey:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailList;->access$8802(Lcom/htc/android/mail/MailList;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6103
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    iget v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 6104
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    iget v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 6091
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    iget v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 6092
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mBasicTabInfos:[Lcom/htc/android/mail/MailList$BasicTabInfo;

    iget v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/htc/android/mail/MailList$BasicTabInfo;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public initSortItems(Lcom/htc/android/mail/Account;)V
    .locals 8
    .parameter "account"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 6288
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 6289
    .local v0, items:Landroid/util/SparseIntArray;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 6290
    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 6291
    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 6292
    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 6293
    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 6294
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 6295
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6296
    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6297
    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6298
    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6299
    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6300
    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortIndexToPositionForDefault:Landroid/util/SparseIntArray;

    .line 6302
    new-instance v0, Landroid/util/SparseIntArray;

    .end local v0           #items:Landroid/util/SparseIntArray;
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 6303
    .restart local v0       #items:Landroid/util/SparseIntArray;
    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 6304
    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 6305
    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 6306
    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 6307
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 6308
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6309
    const/16 v1, 0x8

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6310
    const/16 v1, 0x9

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6311
    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortIndexToPositionForOutBox:Landroid/util/SparseIntArray;

    .line 6336
    :goto_0
    return-void

    .line 6313
    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 6314
    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 6315
    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 6316
    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 6317
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 6318
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6319
    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6320
    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6321
    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6322
    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6323
    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortIndexToPositionForDefault:Landroid/util/SparseIntArray;

    .line 6325
    new-instance v0, Landroid/util/SparseIntArray;

    .end local v0           #items:Landroid/util/SparseIntArray;
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 6326
    .restart local v0       #items:Landroid/util/SparseIntArray;
    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 6327
    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 6328
    invoke-virtual {v0, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 6329
    invoke-virtual {v0, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 6330
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 6331
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6332
    const/16 v1, 0x8

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6333
    const/16 v1, 0x9

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6334
    iput-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mSortIndexToPositionForOutBox:Landroid/util/SparseIntArray;

    goto :goto_0
.end method

.method public isQueryNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 6212
    iget-boolean v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mIsExpandListAdapter:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    if-nez v1, :cond_1

    .line 6213
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    const-string v2, "isQueryNeeded 1>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6227
    :cond_0
    :goto_0
    return v0

    .line 6217
    :cond_1
    iget-boolean v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mIsExpandListAdapter:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    if-nez v1, :cond_2

    .line 6218
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    const-string v2, "isQueryNeeded 2>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6222
    :cond_2
    iget v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mNowTokenId:I

    iget v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mLoadFinishedTokenId:I

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/htc/android/mail/MailList$TabInfo;->mIsInvalidate:Z

    if-eqz v1, :cond_4

    .line 6223
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    const-string v2, "isQueryNeeded 3>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6226
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "MailList"

    const-string v1, "isQueryNeeded 4>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6227
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 6178
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mIsExpandListAdapter:Z

    if-eqz v0, :cond_1

    .line 6179
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    if-eqz v0, :cond_0

    .line 6180
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->notifyDataSetChanged()V

    .line 6187
    :cond_0
    :goto_0
    return-void

    .line 6183
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    if-eqz v0, :cond_0

    .line 6184
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mAdapter:Lcom/htc/android/mail/MailList$MailListAdapter;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList$MailListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public restoreSearchWhere()V
    .locals 0

    .prologue
    .line 6245
    return-void
.end method

.method public taskBeforeQuery()V
    .locals 0

    .prologue
    .line 6285
    return-void
.end method

.method public updateListView()V
    .locals 1

    .prologue
    .line 6191
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 6202
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 6204
    :cond_0
    return-void
.end method
