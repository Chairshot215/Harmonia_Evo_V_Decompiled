.class public Lcom/google/android/gm/ConversationPagerFragment;
.super Lcom/google/android/gm/GmailBaseFragment;
.source "ConversationPagerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/google/android/gm/ConversationSubjectDisplayer;
.implements Lcom/google/android/gm/ConversationViewable;
.implements Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;
    }
.end annotation


# static fields
.field private static sMaxAutoLoadMessages:I

.field private static sSendersLength:I

.field private static sSideConversationLoadDelay:Ljava/lang/Integer;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

.field private mAdapter:Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;

.field private mContext:Landroid/content/Context;

.field private mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

.field private mConversationInfo:Lcom/google/android/gm/ConversationInfo;

.field private mConversationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

.field private mInitialPosition:I

.field private mLabel:Lcom/google/android/gm/provider/Label;

.field private mListContext:Lcom/google/android/gm/ConversationListContext;

.field private mMessageCountFormatString:Ljava/lang/String;

.field private mNewer:Landroid/view/View;

.field private mOlder:Landroid/view/View;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPositionBar:Landroid/view/View;

.field private mPositionText:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mStartedLoadingList:Z

.field private mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseFragment;-><init>()V

    .line 80
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationMap:Ljava/util/Map;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mStartedLoadingList:Z

    .line 412
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationListContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mListContext:Lcom/google/android/gm/ConversationListContext;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/gm/ConversationPagerFragment;Lcom/google/android/gm/provider/Label;)Lcom/google/android/gm/provider/Label;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mLabel:Lcom/google/android/gm/provider/Label;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mAdapter:Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gm/ConversationPagerFragment;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/gm/ConversationPagerFragment;Lcom/google/android/gm/ConversationInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gm/ConversationPagerFragment;->matchesCurrentConversation(Lcom/google/android/gm/ConversationInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/gm/ConversationPagerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->startLoadingList()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/ConversationPagerFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->updatePositionBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/ConversationPagerFragment;)Lcom/google/android/gm/ConversationInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/ConversationPagerFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gm/ConversationPagerFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/google/android/gm/ConversationPagerFragment;->sSendersLength:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/google/android/gm/ConversationPagerFragment;->sMaxAutoLoadMessages:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/gm/ConversationPagerFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method private buildPositionMap()V
    .locals 5

    .prologue
    .line 294
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->becomeInactiveNetworkCursor()Z

    move-result v1

    .line 295
    .local v1, wasActiveNetworkCursor:Z
    const/4 v0, -0x1

    .line 296
    .local v0, position:I
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v2, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 297
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 298
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    add-int/lit8 v0, v0, 0x1

    .line 300
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 302
    :cond_0
    if-eqz v1, :cond_1

    .line 303
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->becomeActiveNetworkCursor()V

    .line 305
    :cond_1
    return-void
.end method

.method private getCurrentConversationView()Lcom/google/android/gm/ConversationView;
    .locals 7

    .prologue
    .line 608
    iget-object v5, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 609
    .local v1, currentPosition:I
    iget-object v5, p0, Lcom/google/android/gm/ConversationPagerFragment;->mAdapter:Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;

    invoke-virtual {v5, v1}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->getId(I)J

    move-result-wide v3

    .line 610
    .local v3, id:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 611
    iget-object v5, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationView;

    .line 612
    .local v0, conversationView:Lcom/google/android/gm/ConversationView;
    iget-object v5, p0, Lcom/google/android/gm/ConversationPagerFragment;->mAdapter:Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;

    invoke-virtual {v5, v0}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->getId(Lcom/google/android/gm/ConversationView;)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-nez v5, :cond_0

    .line 622
    :goto_1
    return-object v0

    .line 610
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 618
    .end local v0           #conversationView:Lcom/google/android/gm/ConversationView;
    :cond_1
    iget-object v5, p0, Lcom/google/android/gm/ConversationPagerFragment;->mAdapter:Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;

    iget-object v6, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 619
    iget-object v5, p0, Lcom/google/android/gm/ConversationPagerFragment;->mAdapter:Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;

    iget-object v6, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6, v1}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationView;

    .line 621
    .restart local v0       #conversationView:Lcom/google/android/gm/ConversationView;
    iget-object v5, p0, Lcom/google/android/gm/ConversationPagerFragment;->mAdapter:Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;

    iget-object v6, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method private matchesCurrentConversation(Lcom/google/android/gm/ConversationInfo;)Z
    .locals 7
    .parameter "info"

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v2

    .line 717
    .local v2, conversationView:Lcom/google/android/gm/ConversationView;
    invoke-virtual {v2}, Lcom/google/android/gm/ConversationView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 718
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "conversation"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationInfo;

    .line 719
    .local v1, conversationInfo:Lcom/google/android/gm/ConversationInfo;
    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Lcom/google/android/gm/ConversationListContext;Lcom/google/android/gm/ConversationInfo;I)Lcom/google/android/gm/ConversationViewable;
    .locals 4
    .parameter "account"
    .parameter "listContext"
    .parameter "conversationInfo"
    .parameter "initialPosition"

    .prologue
    .line 91
    new-instance v1, Lcom/google/android/gm/ConversationPagerFragment;

    invoke-direct {v1}, Lcom/google/android/gm/ConversationPagerFragment;-><init>()V

    .line 93
    .local v1, pager:Lcom/google/android/gm/ConversationPagerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "conversation-list"

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationListContext;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 96
    const-string v2, "conversation"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    const-string v2, "initial-position"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    invoke-virtual {v1, v0}, Lcom/google/android/gm/ConversationPagerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    return-object v1
.end method

.method private setupPageMargin()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 166
    iget-object v4, p0, Lcom/google/android/gm/ConversationPagerFragment;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const v7, 0x1010214

    aput v7, v5, v3

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 167
    .local v6, a:Landroid/content/res/TypedArray;
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 168
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 171
    .local v2, padding:I
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 173
    .local v0, gutterDrawable:Landroid/graphics/drawable/InsetDrawable;
    iget-object v3, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getIntrinsicWidth()I

    move-result v4

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 174
    iget-object v3, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    return-void
.end method

.method private startLoadingList()V
    .locals 4

    .prologue
    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mStartedLoadingList:Z

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "query"

    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v2}, Lcom/google/android/gm/ConversationListContext;->getGmailQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "limit-initial-result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->hashCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 186
    return-void
.end method

.method private updateLabel(Z)V
    .locals 5
    .parameter "shouldUpdatePositionBar"

    .prologue
    .line 365
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, labelName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->updatePositionBar()V

    .line 388
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mAccount:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gm/ConversationPagerFragment$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gm/ConversationPagerFragment$1;-><init>(Lcom/google/android/gm/ConversationPagerFragment;Z)V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/gm/provider/LabelManager;->getLabelAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gm/provider/LabelManager$LabelResultCallback;)V

    goto :goto_0
.end method

.method private updatePositionBar()V
    .locals 11

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->isDataLoaded()Z

    move-result v7

    if-nez v7, :cond_0

    iget v7, p0, Lcom/google/android/gm/ConversationPagerFragment;->mInitialPosition:I

    if-ltz v7, :cond_5

    :cond_0
    move v3, v6

    .line 392
    .local v3, hasPosition:Z
    :goto_0
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment;->mListContext:Lcom/google/android/gm/ConversationListContext;

    invoke-virtual {v7}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    move v2, v6

    .line 393
    .local v2, hasLabel:Z
    :goto_1
    if-eqz v2, :cond_1

    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment;->mLabel:Lcom/google/android/gm/provider/Label;

    if-nez v7, :cond_2

    :cond_1
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->isDataLoaded()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_2
    move v1, v6

    .line 394
    .local v1, hasCount:Z
    :goto_2
    if-eqz v3, :cond_3

    if-nez v1, :cond_8

    .line 395
    :cond_3
    iget-object v5, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPositionBar:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 407
    :cond_4
    :goto_3
    return-void

    .end local v1           #hasCount:Z
    .end local v2           #hasLabel:Z
    .end local v3           #hasPosition:Z
    :cond_5
    move v3, v5

    .line 391
    goto :goto_0

    .restart local v3       #hasPosition:Z
    :cond_6
    move v2, v5

    .line 392
    goto :goto_1

    .restart local v2       #hasLabel:Z
    :cond_7
    move v1, v5

    .line 393
    goto :goto_2

    .line 399
    .restart local v1       #hasCount:Z
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->isDataLoaded()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    .line 400
    .local v4, position:I
    :goto_4
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment;->mLabel:Lcom/google/android/gm/provider/Label;

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v7}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v0

    .line 401
    .local v0, count:I
    :goto_5
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPositionBar:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v9, p0, Lcom/google/android/gm/ConversationPagerFragment;->mNewer:Landroid/view/View;

    if-lez v4, :cond_c

    move v7, v5

    :goto_6
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment;->mOlder:Landroid/view/View;

    add-int/lit8 v9, v0, -0x1

    if-ge v4, v9, :cond_9

    move v8, v5

    :cond_9
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment;->mMessageCountFormatString:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 405
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPositionText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/gm/ConversationPagerFragment;->mMessageCountFormatString:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v10, v4, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 399
    .end local v0           #count:I
    .end local v4           #position:I
    :cond_a
    iget v4, p0, Lcom/google/android/gm/ConversationPagerFragment;->mInitialPosition:I

    goto :goto_4

    .line 400
    .restart local v4       #position:I
    :cond_b
    iget-object v7, p0, Lcom/google/android/gm/ConversationPagerFragment;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-virtual {v7}, Lcom/google/android/gm/provider/Label;->getNumConversations()I

    move-result v0

    goto :goto_5

    .restart local v0       #count:I
    :cond_c
    move v7, v8

    .line 402
    goto :goto_6
.end method


# virtual methods
.method public editDraft(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ConversationView;->editDraft(J)V

    .line 708
    return-void
.end method

.method public forward(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ConversationView;->forward(J)V

    .line 703
    return-void
.end method

.method public getSubjectRemainder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "subject"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    invoke-interface {v0, p1}, Lcom/google/android/gm/ConversationSubjectDisplayer;->getSubjectRemainder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 738
    .end local p1
    :cond_0
    return-object p1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ConversationView;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 798
    return-void
.end method

.method public hideUndoView(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ConversationView;->hideUndoView(Z)V

    .line 653
    return-void
.end method

.method isDataLoaded()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ActivityController$ControllableActivity;

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    .line 142
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v1, p0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->attachConversationViewable(Lcom/google/android/gm/ConversationViewable;)V

    .line 144
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mContext:Landroid/content/Context;

    .line 145
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    .local v0, res:Landroid/content/res/Resources;
    sget v1, Lcom/google/android/gm/ConversationPagerFragment;->sSendersLength:I

    if-nez v1, :cond_0

    .line 147
    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/ConversationPagerFragment;->sSendersLength:I

    .line 148
    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/ConversationPagerFragment;->sMaxAutoLoadMessages:I

    .line 150
    :cond_0
    const v1, 0x7f0c005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mMessageCountFormatString:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    check-cast v1, Lcom/google/android/gm/ConversationSubjectDisplayer;

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    .line 152
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    check-cast v1, Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    .line 154
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->setupPageMargin()V

    .line 155
    new-instance v1, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;-><init>(Lcom/google/android/gm/ConversationPagerFragment;Lcom/google/android/gm/ConversationPagerFragment$1;)V

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mAdapter:Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;

    .line 156
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mAdapter:Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 157
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gm/ConversationPagerFragment;->updateLabel(Z)V

    .line 159
    sget-object v1, Lcom/google/android/gm/ConversationPagerFragment;->sSideConversationLoadDelay:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/ConversationPagerFragment;->sSideConversationLoadDelay:Ljava/lang/Integer;

    .line 163
    :cond_1
    return-void
.end method

.method public onConversationKeyDown(Lcom/google/android/gm/ConversationInfo;ILandroid/view/KeyEvent;)V
    .locals 2
    .parameter "info"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/ConversationPagerFragment$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gm/ConversationPagerFragment$4;-><init>(Lcom/google/android/gm/ConversationPagerFragment;Lcom/google/android/gm/ConversationInfo;ILandroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->post(Ljava/lang/Runnable;)V

    .line 792
    return-void
.end method

.method public onConversationLoadError(Lcom/google/android/gm/ConversationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/ConversationPagerFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/ConversationPagerFragment$3;-><init>(Lcom/google/android/gm/ConversationPagerFragment;Lcom/google/android/gm/ConversationInfo;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->post(Ljava/lang/Runnable;)V

    .line 776
    return-void
.end method

.method public onConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/ConversationPagerFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/ConversationPagerFragment$2;-><init>(Lcom/google/android/gm/ConversationPagerFragment;Lcom/google/android/gm/ConversationInfo;)V

    sget-object v2, Lcom/google/android/gm/ConversationPagerFragment;->sSideConversationLoadDelay:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/UiHandler;->postDelayed(Ljava/lang/Runnable;J)V

    .line 763
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->updatePositionBar()V

    .line 764
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mAccount:Ljava/lang/String;

    .line 108
    const-string v1, "conversation-list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/ConversationListContext;->forBundle(Landroid/os/Bundle;)Lcom/google/android/gm/ConversationListContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mListContext:Lcom/google/android/gm/ConversationListContext;

    .line 109
    const-string v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationInfo;

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 110
    if-eqz p1, :cond_0

    .line 111
    const-string v1, "conversation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationInfo;

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 114
    :cond_0
    const-string v1, "initial-position"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mInitialPosition:I

    .line 115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 120
    const v1, 0x7f040023

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mRootView:Landroid/view/View;

    .line 121
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0f0081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    .line 122
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0f007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 126
    .local v0, positionBarFrame:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/gm/Utils;->addLayoutTransition(Landroid/view/ViewGroup;)V

    .line 128
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0f007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPositionBar:Landroid/view/View;

    .line 129
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPositionBar:Landroid/view/View;

    const v2, 0x7f0f0002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mNewer:Landroid/view/View;

    .line 130
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPositionBar:Landroid/view/View;

    const v2, 0x7f0f0003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mOlder:Landroid/view/View;

    .line 131
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPositionBar:Landroid/view/View;

    const v2, 0x7f0f0080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPositionText:Landroid/widget/TextView;

    .line 132
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 134
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0, v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->attachConversationViewable(Lcom/google/android/gm/ConversationViewable;)V

    .line 242
    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    .line 243
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 244
    iput-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mAdapter:Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;

    .line 245
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 247
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseFragment;->onDestroyView()V

    .line 248
    return-void
.end method

.method public onDestructiveCommand()V
    .locals 1

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->onDestructiveCommand()V

    .line 648
    return-void
.end method

.method public onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V
    .locals 1
    .parameter "label"
    .parameter "conversationId"
    .parameter "added"

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gm/ConversationView;->onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V

    .line 628
    return-void
.end method

.method public onMarkUnread()V
    .locals 1

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->onMarkUnread()V

    .line 638
    return-void
.end method

.method public onMenuItemSelected(ILcom/google/android/gm/CommandListener;)Z
    .locals 1
    .parameter "menuItemId"
    .parameter "commandListener"

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ConversationView;->onMenuItemSelected(ILcom/google/android/gm/CommandListener;)Z

    move-result v0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->isDataLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    .line 338
    .local v0, conversationView:Lcom/google/android/gm/ConversationView;
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "loaded"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 340
    .local v1, loaded:Z
    if-eqz v1, :cond_2

    .line 341
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {p0, v2}, Lcom/google/android/gm/ConversationPagerFragment;->onConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V

    .line 355
    .end local v0           #conversationView:Lcom/google/android/gm/ConversationView;
    .end local v1           #loaded:Z
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 356
    invoke-virtual {p0, v4}, Lcom/google/android/gm/ConversationPagerFragment;->hideUndoView(Z)V

    .line 358
    :cond_1
    return-void

    .line 345
    .restart local v0       #conversationView:Lcom/google/android/gm/ConversationView;
    .restart local v1       #loaded:Z
    :cond_2
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    if-eqz v2, :cond_3

    .line 346
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationCallbacks:Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;

    sget-object v3, Lcom/google/android/gm/ConversationInfo;->INVALID_CONVERSATION_INFO:Lcom/google/android/gm/ConversationInfo;

    invoke-interface {v2, v3}, Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;->onConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V

    .line 349
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->enableLoadData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->startLoadingConversation()V

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 331
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPagerFragment;->isDataLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 312
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-static {v1}, Lcom/google/android/gm/ConversationInfo;->forCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    .line 315
    .local v0, conversationInfo:Lcom/google/android/gm/ConversationInfo;
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/ConversationPagerFragment;->setSubject(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->updatePositionBar()V

    .line 319
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getConversationPositionTracker()Lcom/google/android/gm/ConversationPositionTracker;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v1, v0}, Lcom/google/android/gm/ConversationInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gm/ConversationPositionTracker;->moveToPosition(IZ)Z

    .line 322
    if-eqz v0, :cond_0

    .line 323
    iput-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    .line 326
    .end local v0           #conversationInfo:Lcom/google/android/gm/ConversationInfo;
    :cond_0
    return-void

    .line 319
    .restart local v0       #conversationInfo:Lcom/google/android/gm/ConversationInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 210
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseFragment;->onPause()V

    .line 212
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationView;

    .line 214
    .local v0, conversationView:Lcom/google/android/gm/ConversationView;
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->onPause()V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0           #conversationView:Lcom/google/android/gm/ConversationView;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseFragment;->onResume()V

    .line 202
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationView;

    .line 204
    .local v0, conversationView:Lcom/google/android/gm/ConversationView;
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->onResume()V

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v0           #conversationView:Lcom/google/android/gm/ConversationView;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 232
    const-string v0, "conversation"

    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 233
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseFragment;->onStart()V

    .line 192
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationView;

    .line 194
    .local v0, conversationView:Lcom/google/android/gm/ConversationView;
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->onStart()V

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v0           #conversationView:Lcom/google/android/gm/ConversationView;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 220
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseFragment;->onStop()V

    .line 222
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationView;

    .line 224
    .local v0, conversationView:Lcom/google/android/gm/ConversationView;
    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->onStop()V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v0           #conversationView:Lcom/google/android/gm/ConversationView;
    :cond_0
    return-void
.end method

.method public reply(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ConversationView;->reply(J)V

    .line 693
    return-void
.end method

.method public replyAll(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ConversationView;->replyAll(J)V

    .line 698
    return-void
.end method

.method public resetViews()V
    .locals 1

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->resetViews()V

    .line 643
    return-void
.end method

.method public setCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 271
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mStartedLoadingList:Z

    if-nez v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iput-object p1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 278
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->buildPositionMap()V

    .line 281
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-virtual {v1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 283
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 284
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mInitialPosition:I

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mAdapter:Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationPagerFragment$ConversationAdapter;->notifyDataSetChanged()V

    .line 287
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/ConversationPagerFragment;->updateLabel(Z)V

    goto :goto_0
.end method

.method public setStarOnMessage(JJZ)V
    .locals 6
    .parameter "messageId"
    .parameter "mServerMessageId"
    .parameter "on"

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/ConversationView;->setStarOnMessage(JJZ)V

    .line 713
    return-void
.end method

.method public setSubject(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;)V
    .locals 1
    .parameter "info"
    .parameter "subject"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gm/ConversationPagerFragment;->matchesCurrentConversation(Lcom/google/android/gm/ConversationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment;->mSubjectDisplayer:Lcom/google/android/gm/ConversationSubjectDisplayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/ConversationSubjectDisplayer;->setSubject(Lcom/google/android/gm/ConversationInfo;Ljava/lang/String;)V

    .line 731
    :cond_0
    return-void
.end method

.method public showConversation(Lcom/google/android/gm/ConversationInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    .line 256
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mConversationMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gm/ConversationInfo;->getConversationId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 259
    .local v0, position:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 260
    const/4 v1, 0x0

    .line 264
    :goto_0
    return v1

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/ConversationPagerFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 264
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public showUndoView(Lcom/google/android/gm/UndoOperation;Z)V
    .locals 1
    .parameter "undoOperation"
    .parameter "animate"

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ConversationView;->showUndoView(Lcom/google/android/gm/UndoOperation;Z)V

    .line 658
    return-void
.end method

.method public toggleStar()V
    .locals 1

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->toggleStar()V

    .line 663
    return-void
.end method

.method public unstarAllMessages()V
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPagerFragment;->getCurrentConversationView()Lcom/google/android/gm/ConversationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationView;->unstarAllMessages()V

    .line 668
    return-void
.end method
