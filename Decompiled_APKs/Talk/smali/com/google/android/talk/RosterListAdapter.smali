.class public Lcom/google/android/talk/RosterListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RosterListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/google/android/talk/IRosterListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;,
        Lcom/google/android/talk/RosterListAdapter$MergeItem;,
        Lcom/google/android/talk/RosterListAdapter$Bind;,
        Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;,
        Lcom/google/android/talk/RosterListAdapter$CallState;
    }
.end annotation


# static fields
.field private static sValidator:Lcom/android/common/Rfc822Validator;


# instance fields
.field private mAccountId:J

.field private mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mExtraSpaceAfterActiveChats:I

.field private mFilterMode:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

.field private mFocusAccount:J

.field private mFocusContact:Ljava/lang/String;

.field private mIncludeSelfItem:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

.field private mIsOnline:Z

.field private mMarkup:Lcom/google/android/talk/util/Markup;

.field private mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

.field private mNarrowLayout:Z

.field private mObserver:Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;

.field private mSearchString:Ljava/lang/String;

.field private mSelfCursor:Landroid/database/Cursor;

.field private mSortMode:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

.field private mSuppressIndent:Z

.field private mSuppressVideoButton:Z

.field private mTabletMode:Z

.field private mUsernameColumn:I

.field private mVideoButtonClickedHandler:Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 573
    new-instance v0, Lcom/android/common/Rfc822Validator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/talk/RosterListAdapter;->sValidator:Lcom/android/common/Rfc822Validator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 280
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 247
    new-array v0, v1, [Lcom/google/android/talk/RosterListAdapter$MergeItem;

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .line 254
    iput-boolean v1, p0, Lcom/google/android/talk/RosterListAdapter;->mDataValid:Z

    .line 256
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;-><init>(Lcom/google/android/talk/RosterListAdapter;Lcom/google/android/talk/RosterListAdapter$1;)V

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mObserver:Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mIsOnline:Z

    .line 266
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusAccount:J

    .line 281
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter;->mContext:Landroid/content/Context;

    .line 282
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-direct {v0, p0, p1, v2}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;-><init>(Lcom/google/android/talk/RosterListAdapter;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    .line 283
    new-instance v0, Lcom/google/android/talk/util/Markup;

    invoke-direct {v0, p1}, Lcom/google/android/talk/util/Markup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mMarkup:Lcom/google/android/talk/util/Markup;

    .line 285
    invoke-static {p1}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mTabletMode:Z

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/talk/RosterListAdapter;->mExtraSpaceAfterActiveChats:I

    .line 289
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/RosterListAdapter;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/RosterListAdapter$CallState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/talk/RosterListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mSuppressVideoButton:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mVideoButtonClickedHandler:Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/RosterListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/RosterListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/talk/RosterListAdapter;->mUsernameColumn:I

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/talk/RosterListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mSearchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/talk/RosterListAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mSelfCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/android/talk/RosterListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/android/talk/RosterListAdapter;->mDataValid:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/talk/RosterListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mTabletMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/RosterListAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusAccount:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/RosterListAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/android/talk/RosterListAdapter;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/RosterListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusContact:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/util/Markup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mMarkup:Lcom/google/android/talk/util/Markup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/RosterListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mNarrowLayout:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/RosterListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mSuppressIndent:Z

    return v0
.end method

.method private getInnerPosition(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 644
    move v2, p1

    .line 645
    .local v2, retval:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 646
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    aget-object v3, v3, v1

    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mPosition:I
    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$2300(Lcom/google/android/talk/RosterListAdapter$MergeItem;)I

    move-result v0

    .line 647
    .local v0, headerPosition:I
    if-ge p1, v0, :cond_1

    .line 656
    .end local v0           #headerPosition:I
    :cond_0
    :goto_1
    return v2

    .line 649
    .restart local v0       #headerPosition:I
    :cond_1
    if-ne p1, v0, :cond_2

    .line 650
    add-int/lit8 v3, v1, 0x1

    neg-int v2, v3

    .line 651
    goto :goto_1

    .line 653
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 645
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private makeHeaderMergeItems(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/RosterListAdapter$MergeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/RosterListAdapter$MergeItem;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, -0x1

    .line 485
    const/4 v10, 0x2

    new-array v4, v10, [Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .line 487
    .local v4, retVal:[Lcom/google/android/talk/RosterListAdapter$MergeItem;
    const-string v10, "mode"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 488
    .local v3, presenceColumn:I
    const-string v10, "ChatsTableId"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 489
    .local v1, chatColumn:I
    const-string v10, "is_active"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 490
    .local v0, activeColumn:I
    const-string v10, "subscriptionType"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 491
    .local v7, subscriptionTypeColumn:I
    invoke-interface {p1, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 498
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 499
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 501
    .local v5, subscriptionType:J
    const-wide/16 v10, 0x5

    cmp-long v10, v5, v10

    if-eqz v10, :cond_0

    .line 507
    .end local v5           #subscriptionType:J
    :cond_1
    invoke-interface {p1, v12}, Landroid/database/Cursor;->move(I)Z

    .line 508
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 509
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_6

    move v2, v8

    .line 511
    .local v2, isActive:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 521
    .end local v2           #isActive:Z
    :cond_3
    invoke-interface {p1, v12}, Landroid/database/Cursor;->move(I)Z

    .line 522
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 523
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_7

    move v2, v8

    .line 525
    .restart local v2       #isActive:Z
    :goto_1
    if-nez v2, :cond_4

    .line 531
    .end local v2           #isActive:Z
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/google/android/talk/RosterListAdapter;->mExtraSpaceAfterActiveChats:I

    const v10, 0x7f040028

    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/talk/RosterListAdapter;->makeSpacerMergeItem(III)Lcom/google/android/talk/RosterListAdapter$MergeItem;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    return-void

    :cond_6
    move v2, v9

    .line 509
    goto :goto_0

    :cond_7
    move v2, v9

    .line 523
    goto :goto_1
.end method

.method private makeInviteMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;
    .locals 6
    .parameter "cursorCount"
    .parameter "previousCount"

    .prologue
    .line 375
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$MergeItem;

    add-int v2, p1, p2

    const/4 v3, 0x1

    const v4, 0x7f040035

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/RosterListAdapter$MergeItem;-><init>(Lcom/google/android/talk/RosterListAdapter;IZII)V

    .line 377
    .local v0, item:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    new-instance v1, Lcom/google/android/talk/RosterListAdapter$2;

    invoke-direct {v1, p0}, Lcom/google/android/talk/RosterListAdapter$2;-><init>(Lcom/google/android/talk/RosterListAdapter;)V

    #setter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mBindRunnable:Lcom/google/android/talk/RosterListAdapter$Bind;
    invoke-static {v0, v1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1802(Lcom/google/android/talk/RosterListAdapter$MergeItem;Lcom/google/android/talk/RosterListAdapter$Bind;)Lcom/google/android/talk/RosterListAdapter$Bind;

    .line 408
    return-object v0
.end method

.method private makeSearchMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;
    .locals 6
    .parameter "cursorCount"
    .parameter "previousCount"

    .prologue
    .line 337
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$MergeItem;

    add-int v2, p1, p2

    const/4 v3, 0x1

    const v4, 0x7f040035

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/RosterListAdapter$MergeItem;-><init>(Lcom/google/android/talk/RosterListAdapter;IZII)V

    .line 339
    .local v0, item:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    new-instance v1, Lcom/google/android/talk/RosterListAdapter$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/RosterListAdapter$1;-><init>(Lcom/google/android/talk/RosterListAdapter;)V

    #setter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mBindRunnable:Lcom/google/android/talk/RosterListAdapter$Bind;
    invoke-static {v0, v1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1802(Lcom/google/android/talk/RosterListAdapter$MergeItem;Lcom/google/android/talk/RosterListAdapter$Bind;)Lcom/google/android/talk/RosterListAdapter$Bind;

    .line 371
    return-object v0
.end method

.method private makeSelfMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;
    .locals 6
    .parameter "cursorCount"
    .parameter "previousCount"

    .prologue
    const/4 v2, 0x0

    .line 435
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$MergeItem;

    const/4 v3, 0x1

    const v4, 0x7f04002e

    move-object v1, p0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/RosterListAdapter$MergeItem;-><init>(Lcom/google/android/talk/RosterListAdapter;IZII)V

    .line 437
    .local v0, item:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    new-instance v1, Lcom/google/android/talk/RosterListAdapter$4;

    invoke-direct {v1, p0}, Lcom/google/android/talk/RosterListAdapter$4;-><init>(Lcom/google/android/talk/RosterListAdapter;)V

    #setter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mBindRunnable:Lcom/google/android/talk/RosterListAdapter$Bind;
    invoke-static {v0, v1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1802(Lcom/google/android/talk/RosterListAdapter$MergeItem;Lcom/google/android/talk/RosterListAdapter$Bind;)Lcom/google/android/talk/RosterListAdapter$Bind;

    .line 465
    return-object v0
.end method

.method private makeSpacerMergeItem(III)Lcom/google/android/talk/RosterListAdapter$MergeItem;
    .locals 6
    .parameter "position"
    .parameter "height"
    .parameter "layoutId"

    .prologue
    .line 412
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$MergeItem;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/RosterListAdapter$MergeItem;-><init>(Lcom/google/android/talk/RosterListAdapter;IZII)V

    .line 413
    .local v0, item:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    new-instance v1, Lcom/google/android/talk/RosterListAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/google/android/talk/RosterListAdapter$3;-><init>(Lcom/google/android/talk/RosterListAdapter;I)V

    #setter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mBindRunnable:Lcom/google/android/talk/RosterListAdapter$Bind;
    invoke-static {v0, v1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1802(Lcom/google/android/talk/RosterListAdapter$MergeItem;Lcom/google/android/talk/RosterListAdapter$Bind;)Lcom/google/android/talk/RosterListAdapter$Bind;

    .line 431
    return-object v0
.end method

.method private setupMergeItems()V
    .locals 6

    .prologue
    .line 576
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    .line 577
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/talk/RosterListAdapter$MergeItem;

    iput-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .line 602
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 582
    .local v0, cursorCount:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v1, mergeItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/RosterListAdapter$MergeItem;>;"
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mSearchString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 585
    sget-object v3, Lcom/google/android/talk/RosterListAdapter;->sValidator:Lcom/android/common/Rfc822Validator;

    iget-object v4, p0, Lcom/google/android/talk/RosterListAdapter;->mSearchString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 587
    .local v2, validEmail:Z
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v1}, Lcom/google/android/talk/RosterListAdapter;->makeHeaderMergeItems(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    .line 588
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/talk/RosterListAdapter;->makeSearchMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    if-eqz v2, :cond_1

    .line 590
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/talk/RosterListAdapter;->makeInviteMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    .end local v2           #validEmail:Z
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/talk/RosterListAdapter$MergeItem;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/talk/RosterListAdapter$MergeItem;

    iput-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    goto :goto_0

    .line 593
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/talk/RosterListAdapter;->mIncludeSelfItem:Z

    if-eqz v3, :cond_3

    .line 594
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/talk/RosterListAdapter;->makeSelfMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    iget-boolean v3, p0, Lcom/google/android/talk/RosterListAdapter;->mTabletMode:Z

    if-eqz v3, :cond_3

    .line 596
    const/4 v3, 0x1

    const/4 v4, -0x1

    const v5, 0x7f04002f

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/talk/RosterListAdapter;->makeSpacerMergeItem(III)Lcom/google/android/talk/RosterListAdapter$MergeItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_3
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v1}, Lcom/google/android/talk/RosterListAdapter;->makeHeaderMergeItems(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x1

    return v0
.end method

.method public changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .parameter "c"
    .parameter "searchString"

    .prologue
    .line 309
    iput-object p2, p0, Lcom/google/android/talk/RosterListAdapter;->mSearchString:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mObserver:Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 314
    :cond_0
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    .line 315
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mDataValid:Z

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/RosterListAdapter;->mUsernameColumn:I

    .line 326
    :goto_0
    invoke-direct {p0}, Lcom/google/android/talk/RosterListAdapter;->setupMergeItems()V

    .line 327
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->changeCursor(Landroid/database/Cursor;)V

    .line 328
    return-void

    .line 319
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mDataValid:Z

    .line 320
    const-string v0, "username"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListAdapter;->mUsernameColumn:I

    .line 321
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mObserver:Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public getActiveCallState()Lcom/google/android/talk/RosterListAdapter$CallState;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mDataValid:Z

    if-nez v0, :cond_0

    .line 634
    const/4 v0, 0x0

    .line 636
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListAdapter;->getInnerPosition(I)I

    move-result v0

    .line 661
    .local v0, innerPosition:I
    if-gez v0, :cond_0

    .line 662
    const/4 v1, 0x0

    .line 664
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListAdapter;->getInnerPosition(I)I

    move-result v0

    .line 670
    .local v0, innerPosition:I
    if-gez v0, :cond_0

    .line 672
    const-wide v1, 0x7fffffffffffffffL

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 674
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListAdapter;->getInnerPosition(I)I

    move-result v0

    .line 680
    .local v0, innerPosition:I
    if-gez v0, :cond_0

    .line 681
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getViewTypeCount()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    add-int/lit8 v3, v0, 0x1

    neg-int v3, v3

    aget-object v2, v2, v3

    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mViewType:I
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1700(Lcom/google/android/talk/RosterListAdapter$MergeItem;)I

    move-result v2

    add-int/2addr v1, v2

    .line 683
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListAdapter;->getInnerPosition(I)I

    move-result v1

    .line 689
    .local v1, innerPosition:I
    if-gez v1, :cond_2

    .line 690
    mul-int/lit8 v3, v1, -0x1

    add-int/lit8 v0, v3, -0x1

    .line 691
    .local v0, header:I
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    aget-object v2, v3, v0

    .line 692
    .local v2, m:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 693
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mInflater:Landroid/view/LayoutInflater;

    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mResourceToInflate:I
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$2400(Lcom/google/android/talk/RosterListAdapter$MergeItem;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    #setter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mView:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1502(Lcom/google/android/talk/RosterListAdapter$MergeItem;Landroid/view/View;)Landroid/view/View;

    .line 694
    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mBindRunnable:Lcom/google/android/talk/RosterListAdapter$Bind;
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1800(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Lcom/google/android/talk/RosterListAdapter$Bind;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 695
    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mBindRunnable:Lcom/google/android/talk/RosterListAdapter$Bind;
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1800(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Lcom/google/android/talk/RosterListAdapter$Bind;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/talk/RosterListAdapter$Bind;->onInflate(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V

    .line 699
    :cond_0
    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mBindRunnable:Lcom/google/android/talk/RosterListAdapter$Bind;
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1800(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Lcom/google/android/talk/RosterListAdapter$Bind;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 700
    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mBindRunnable:Lcom/google/android/talk/RosterListAdapter$Bind;
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1800(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Lcom/google/android/talk/RosterListAdapter$Bind;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/talk/RosterListAdapter$Bind;->bind(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V

    .line 702
    :cond_1
    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object v3

    .line 704
    .end local v0           #header:I
    .end local v2           #m:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    :goto_0
    return-object v3

    :cond_2
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v3, v1, p2, p3}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 710
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getViewTypeCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x4

    .line 711
    .local v0, c:I
    return v0
.end method

.method public hasActiveChats()Z
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->hasActiveChats()Z

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x1

    return v0
.end method

.method public init(JLandroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "accountId"
    .parameter "activity"
    .parameter "runnable"

    .prologue
    .line 609
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 611
    invoke-static {p3}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    .line 612
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 614
    invoke-virtual {p0, p1, p2}, Lcom/google/android/talk/RosterListAdapter;->setAccountId(J)V

    .line 615
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0, p4}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->init(Ljava/lang/Runnable;)V

    .line 616
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListAdapter;->getInnerPosition(I)I

    move-result v0

    .line 625
    .local v0, p:I
    if-gez v0, :cond_0

    .line 626
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    aget-object v1, v1, v2

    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mEnabled:Z
    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$2200(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Z

    move-result v1

    .line 628
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->notifyDataSetChanged()V

    .line 799
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 853
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "first"
    .parameter "visible"
    .parameter "total"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->onScroll(Landroid/widget/AbsListView;III)V

    .line 829
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 833
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 724
    return-void
.end method

.method public setAccountId(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 743
    iput-wide p1, p0, Lcom/google/android/talk/RosterListAdapter;->mAccountId:J

    .line 744
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->notifyDataSetInvalidated()V

    .line 745
    return-void
.end method

.method public setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V
    .locals 3
    .parameter "callState"

    .prologue
    .line 802
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    const/4 v0, 0x0

    .line 807
    .local v0, isDifferent:Z
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    if-eqz v1, :cond_2

    if-nez p1, :cond_4

    .line 808
    :cond_2
    const/4 v0, 0x1

    .line 817
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 818
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    .line 819
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 809
    :cond_4
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-object v1, v1, Lcom/google/android/talk/RosterListAdapter$CallState;->mBareJid:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/talk/RosterListAdapter$CallState;->mBareJid:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 810
    const/4 v0, 0x1

    goto :goto_1

    .line 811
    :cond_5
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-boolean v1, v1, Lcom/google/android/talk/RosterListAdapter$CallState;->mIsVideo:Z

    iget-boolean v2, p1, Lcom/google/android/talk/RosterListAdapter$CallState;->mIsVideo:Z

    if-eq v1, v2, :cond_6

    .line 812
    const/4 v0, 0x1

    goto :goto_1

    .line 813
    :cond_6
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-boolean v1, v1, Lcom/google/android/talk/RosterListAdapter$CallState;->mPending:Z

    iget-boolean v2, p1, Lcom/google/android/talk/RosterListAdapter$CallState;->mPending:Z

    if-eq v1, v2, :cond_3

    .line 814
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V
    .locals 0
    .parameter "mode"
    .parameter "sortMode"

    .prologue
    .line 847
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter;->mFilterMode:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    .line 848
    iput-object p2, p0, Lcom/google/android/talk/RosterListAdapter;->mSortMode:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    .line 849
    return-void
.end method

.method public setFocus(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 763
    if-eqz p1, :cond_0

    .line 764
    const-string v0, "accountId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusAccount:J

    .line 765
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusContact:Ljava/lang/String;

    .line 770
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->notifyDataSetChanged()V

    .line 771
    return-void

    .line 767
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusAccount:J

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusContact:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIncludeSelfItem(Z)V
    .locals 0
    .parameter "include"

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/google/android/talk/RosterListAdapter;->mIncludeSelfItem:Z

    .line 293
    invoke-direct {p0}, Lcom/google/android/talk/RosterListAdapter;->setupMergeItems()V

    .line 294
    return-void
.end method

.method public setIsOnline(Z)Z
    .locals 1
    .parameter "isOnline"

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mIsOnline:Z

    if-eq v0, p1, :cond_0

    .line 756
    iput-boolean p1, p0, Lcom/google/android/talk/RosterListAdapter;->mIsOnline:Z

    .line 757
    const/4 v0, 0x1

    .line 759
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNarrowLayout(Z)V
    .locals 1
    .parameter "narrow"

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mNarrowLayout:Z

    if-eq v0, p1, :cond_0

    .line 749
    iput-boolean p1, p0, Lcom/google/android/talk/RosterListAdapter;->mNarrowLayout:Z

    .line 751
    :cond_0
    return-void
.end method

.method public setNeedForceLoad(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->setNeedForceLoad(Z)V

    .line 740
    return-void
.end method

.method public setOnVideoButtonClickedListener(Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 842
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter;->mVideoButtonClickedHandler:Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;

    .line 843
    return-void
.end method

.method public setSelfStatusCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter;->mSelfCursor:Landroid/database/Cursor;

    .line 301
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .local v0, arr$:[Lcom/google/android/talk/RosterListAdapter$MergeItem;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 302
    .local v3, m:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mViewType:I
    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1700(Lcom/google/android/talk/RosterListAdapter$MergeItem;)I

    move-result v4

    if-nez v4, :cond_0

    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 303
    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mBindRunnable:Lcom/google/android/talk/RosterListAdapter$Bind;
    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1800(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Lcom/google/android/talk/RosterListAdapter$Bind;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/talk/RosterListAdapter$Bind;->bind(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V

    .line 301
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v3           #m:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    :cond_1
    return-void
.end method

.method public suppressIndent()V
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mSuppressIndent:Z

    .line 791
    return-void
.end method

.method public suppressVideoButton(Z)V
    .locals 0
    .parameter "suppress"

    .prologue
    .line 794
    iput-boolean p1, p0, Lcom/google/android/talk/RosterListAdapter;->mSuppressVideoButton:Z

    .line 795
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 728
    return-void
.end method
