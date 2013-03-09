.class public Lcom/google/android/talk/RosterListItem;
.super Lcom/google/android/talk/DividerDrawingListItem;
.source "RosterListItem.java"

# interfaces
.implements Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/RosterListItem$RelativeLayoutPressHandler;,
        Lcom/google/android/talk/RosterListItem$DontPressWithParentFrameLayout;,
        Lcom/google/android/talk/RosterListItem$BindHandler;
    }
.end annotation


# static fields
.field private static sAnimatingItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/talk/RosterListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApp:Lcom/google/android/talk/TalkApp;

.field private mAvatarHashColumn:I

.field private mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

.field private mCapabilitiesColumn:I

.field private mClientTypeColumn:I

.field private mComputedColumns:Z

.field private mContactTypeColumn:I

.field private mContainerView:Landroid/view/ViewGroup;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mCurrentAnimatorIsFast:Z

.field private mCursor:Landroid/database/Cursor;

.field private mCursorPos:I

.field private mCustomStatusColumn:I

.field private mDefaultLine1TextColor:I

.field private mDefaultLine2TextColor:I

.field private mIsSelfItem:Z

.field private mLastUnreadMessageColumn:I

.field private mLine1:Landroid/widget/TextView;

.field private mLine1Typeface:Landroid/graphics/Typeface;

.field private mLine2:Landroid/widget/TextView;

.field private mLine2Buffer:Landroid/database/CharArrayBuffer;

.field private mMarkup:Lcom/google/android/talk/util/Markup;

.field private mNarrow:Z

.field private mNicknameColumn:I

.field private mNoQuickBadge:Landroid/view/View;

.field private mPresenceStatusColumn:I

.field private mPresenceView:Landroid/widget/ImageView;

.field private mQuickBadge:Landroid/view/View;

.field private mQuickContactColumn:I

.field private mResources:Landroid/content/res/Resources;

.field private mSeparator:Landroid/view/View;

.field private mShoveDistance:I

.field private mShover:Landroid/view/View;

.field private mSubscriptionStatusColumn:I

.field private mSubscriptionTypeColumn:I

.field private mTextWrapper:Landroid/view/View;

.field private mUsername:Ljava/lang/String;

.field private mUsernameColumn:I

.field private mVideoButtonClickedHandler:Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;

.field private mVideoButtonClickedListener:Landroid/view/View$OnClickListener;

.field private mVideoButtonContainerView:Landroid/view/View;

.field private mVideoButtonView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/talk/RosterListItem;->sAnimatingItems:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "set"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/DividerDrawingListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    new-instance v0, Lcom/google/android/talk/RosterListItem$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/RosterListItem$1;-><init>(Lcom/google/android/talk/RosterListItem;)V

    iput-object v0, p0, Lcom/google/android/talk/RosterListItem;->mVideoButtonClickedListener:Landroid/view/View$OnClickListener;

    .line 631
    new-instance v0, Lcom/google/android/talk/RosterListItem$BindHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/RosterListItem$BindHandler;-><init>(Lcom/google/android/talk/RosterListItem;Lcom/google/android/talk/RosterListItem$1;)V

    iput-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    .line 125
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-static {p1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/RosterListItem;->mApp:Lcom/google/android/talk/TalkApp;

    .line 128
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/talk/RosterListItem;->setDescendantFocusability(I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;Landroid/content/Context;)V
    .locals 1
    .parameter "p"
    .parameter "context"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/talk/RosterListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    iput-object p1, p0, Lcom/google/android/talk/RosterListItem;->mVideoButtonClickedHandler:Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mVideoButtonClickedHandler:Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/RosterListItem$BindHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/talk/RosterListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/talk/RosterListItem;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mSeparator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/talk/RosterListItem;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/talk/RosterListItem;->mSeparator:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/talk/RosterListItem;)Landroid/graphics/Typeface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mLine1Typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mDefaultLine1TextColor:I

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mDefaultLine2TextColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mUsernameColumn:I

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mLastUnreadMessageColumn:I

    return v0
.end method

.method static synthetic access$2100(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mCustomStatusColumn:I

    return v0
.end method

.method static synthetic access$2200(Lcom/google/android/talk/RosterListItem;)Landroid/database/CharArrayBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mLine2Buffer:Landroid/database/CharArrayBuffer;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mVideoButtonView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/talk/RosterListItem;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mVideoButtonClickedListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/talk/RosterListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListItem;->mIsSelfItem:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mPresenceView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mShover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mShoveDistance:I

    return v0
.end method

.method static synthetic access$2900(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mNoQuickBadge:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mContactTypeColumn:I

    return v0
.end method

.method static synthetic access$3000(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mQuickBadge:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/talk/RosterListItem;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListItem;->clearColorFilter(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mAvatarHashColumn:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/view/View;)Lcom/google/android/talk/RosterListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/android/talk/RosterListItem;->findRosterListItem(Landroid/view/View;)Lcom/google/android/talk/RosterListItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/google/android/talk/RosterListItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/android/talk/RosterListItem;->joined(Lcom/google/android/talk/RosterListItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/database/Cursor;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/google/android/talk/RosterListItem;->internalGetItemViewType(Landroid/database/Cursor;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mNicknameColumn:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mCapabilitiesColumn:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/RosterListItem;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/RosterListItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/talk/RosterListItem;->mPresenceStatusColumn:I

    return v0
.end method

.method private clearColorFilter(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "imageView"

    .prologue
    .line 750
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 758
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 759
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 763
    :cond_0
    return-void
.end method

.method private static findRosterListItem(Landroid/view/View;)Lcom/google/android/talk/RosterListItem;
    .locals 3
    .parameter "v"

    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 828
    .local v1, vp:Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 829
    instance-of v2, v1, Lcom/google/android/talk/RosterListItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 830
    check-cast v0, Lcom/google/android/talk/RosterListItem;

    .line 835
    :goto_1
    return-object v0

    .line 833
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 835
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getItemViewType(Lcom/google/android/talk/TalkApp;Landroid/database/Cursor;)I
    .locals 5
    .parameter "app"
    .parameter "c"

    .prologue
    .line 193
    const-string v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 194
    .local v1, contactType:I
    const-string v4, "username"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, contact:Ljava/lang/String;
    const/4 v3, 0x0

    .line 198
    .local v3, isGroupChatInvitation:Z
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 199
    iget-object v4, p0, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/GroupChatInvitation;

    .line 200
    .local v2, invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 203
    .end local v2           #invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    :cond_0
    :goto_0
    invoke-static {p1, v3}, Lcom/google/android/talk/RosterListItem;->internalGetItemViewType(Landroid/database/Cursor;Z)I

    move-result v4

    return v4

    .line 200
    .restart local v2       #invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleAnimation()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 678
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget v1, v1, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-ne v1, v0, :cond_4

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget-object v1, v1, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget-object v1, v1, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/RosterListAdapter$CallState;->appliesToContact(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 683
    .local v0, animate:Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimatorIsFast:Z

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget-object v2, v2, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-boolean v2, v2, Lcom/google/android/talk/RosterListAdapter$CallState;->mPending:Z

    if-ne v1, v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 685
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 686
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/talk/RosterListItem;->setAnimator(Landroid/animation/Animator;)V

    .line 689
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    if-nez v1, :cond_3

    .line 690
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget-object v1, v1, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-boolean v1, v1, Lcom/google/android/talk/RosterListAdapter$CallState;->mPending:Z

    iput-boolean v1, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimatorIsFast:Z

    .line 691
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget-object v1, v1, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-boolean v1, v1, Lcom/google/android/talk/RosterListAdapter$CallState;->mPending:Z

    invoke-direct {p0, v1, p0}, Lcom/google/android/talk/RosterListItem;->makeAnimator(ZLcom/google/android/talk/RosterListItem;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/RosterListItem;->setAnimator(Landroid/animation/Animator;)V

    .line 693
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 694
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 697
    :cond_3
    return-void

    .line 678
    .end local v0           #animate:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleDebug(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 664
    return-void
.end method

.method private init(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 175
    const-string v0, "username"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mUsernameColumn:I

    .line 176
    const-string v0, "nickname"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mNicknameColumn:I

    .line 177
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mContactTypeColumn:I

    .line 178
    const-string v0, "subscriptionStatus"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mSubscriptionStatusColumn:I

    .line 179
    const-string v0, "subscriptionType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mSubscriptionTypeColumn:I

    .line 180
    const-string v0, "mode"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mPresenceStatusColumn:I

    .line 181
    const-string v0, "status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mCustomStatusColumn:I

    .line 182
    const-string v0, "client_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mClientTypeColumn:I

    .line 183
    const-string v0, "last_unread_message"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mLastUnreadMessageColumn:I

    .line 184
    const-string v0, "qc"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mQuickContactColumn:I

    .line 185
    const-string v0, "avatars_hash"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mAvatarHashColumn:I

    .line 186
    const-string v0, "cap"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem;->mCapabilitiesColumn:I

    .line 189
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/talk/RosterListItem;->mLine2Buffer:Landroid/database/CharArrayBuffer;

    .line 190
    return-void
.end method

.method private static internalGetItemViewType(Landroid/database/Cursor;Z)I
    .locals 7
    .parameter "c"
    .parameter "isGroupChatInvitation"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    if-eqz p1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v3

    .line 212
    :cond_1
    const-string v5, "subscriptionType"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v1, v5

    .line 213
    .local v1, subscriptionType:J
    const-wide/16 v5, 0x5

    cmp-long v5, v1, v5

    if-eqz v5, :cond_0

    .line 215
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_2

    .line 217
    const/4 v3, 0x3

    goto :goto_0

    .line 220
    :cond_2
    const-string v5, "is_active"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v4

    .line 222
    .local v0, showChat:Z
    :goto_1
    if-eqz v0, :cond_4

    move v3, v4

    .line 223
    goto :goto_0

    .end local v0           #showChat:Z
    :cond_3
    move v0, v3

    .line 220
    goto :goto_1

    .line 226
    .restart local v0       #showChat:Z
    :cond_4
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private static joined(Lcom/google/android/talk/RosterListItem;)Z
    .locals 6
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 851
    iget-boolean v5, p0, Lcom/google/android/talk/RosterListItem;->mIsSelfItem:Z

    if-eqz v5, :cond_1

    .line 862
    :cond_0
    :goto_0
    return v3

    .line 859
    :cond_1
    iget-object v5, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget v5, v5, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    move v0, v3

    .line 860
    .local v0, audioCapable:Z
    :goto_1
    iget-object v5, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget v5, v5, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    move v2, v3

    .line 861
    .local v2, videoCapable:Z
    :goto_2
    if-nez v0, :cond_2

    if-eqz v2, :cond_5

    :cond_2
    move v1, v3

    .line 862
    .local v1, hasAV:Z
    :goto_3
    if-eqz v1, :cond_0

    move v3, v4

    goto :goto_0

    .end local v0           #audioCapable:Z
    .end local v1           #hasAV:Z
    .end local v2           #videoCapable:Z
    :cond_3
    move v0, v4

    .line 859
    goto :goto_1

    .restart local v0       #audioCapable:Z
    :cond_4
    move v2, v4

    .line 860
    goto :goto_2

    .restart local v2       #videoCapable:Z
    :cond_5
    move v1, v4

    .line 861
    goto :goto_3
.end method

.method private makeAnimator(ZLcom/google/android/talk/RosterListItem;)Landroid/animation/AnimatorSet;
    .locals 11
    .parameter "fast"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x2

    .line 589
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 591
    .local v0, a:Landroid/animation/AnimatorSet;
    const v3, 0x3ecccccd

    .line 592
    .local v3, x:F
    const/high16 v4, 0x3f80

    .line 594
    .local v4, y:F
    if-eqz p1, :cond_0

    const/16 v1, 0xfa

    .line 595
    .local v1, dur:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v2, 0x3e8

    .line 597
    .local v2, dur2:I
    :goto_1
    const/4 v6, 0x5

    new-array v6, v6, [Landroid/animation/Animator;

    const-string v7, "VideoPresenceAlpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_0

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "VideoPresenceAlpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_1

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v5, "VideoPresenceAlpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_2

    invoke-static {p2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v7, v1

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v10

    const/4 v5, 0x3

    const-string v7, "VideoPresenceAlpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_3

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v1

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x4

    const-string v7, "VideoPresenceAlpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_4

    invoke-static {p2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v2

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 604
    new-instance v5, Lcom/google/android/talk/RosterListItem$2;

    invoke-direct {v5, p0, v0}, Lcom/google/android/talk/RosterListItem$2;-><init>(Lcom/google/android/talk/RosterListItem;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 628
    return-object v0

    .line 594
    .end local v1           #dur:I
    .end local v2           #dur2:I
    :cond_0
    const/16 v1, 0x5dc

    goto :goto_0

    .restart local v1       #dur:I
    :cond_1
    move v2, v5

    .line 595
    goto :goto_1

    .line 597
    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0xcct 0x3et
    .end array-data

    :array_2
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0xcct 0x3et
    .end array-data

    :array_4
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0xcdt 0xcct 0xcct 0x3et
    .end array-data
.end method

.method public static onStop()V
    .locals 3

    .prologue
    .line 559
    sget-object v2, Lcom/google/android/talk/RosterListItem;->sAnimatingItems:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/RosterListItem;

    .line 560
    .local v1, r:Lcom/google/android/talk/RosterListItem;
    iget-object v2, v1, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 561
    iget-object v2, v1, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 562
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 565
    .end local v1           #r:Lcom/google/android/talk/RosterListItem;
    :cond_1
    sget-object v2, Lcom/google/android/talk/RosterListItem;->sAnimatingItems:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 566
    return-void
.end method

.method private setAnimator(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animator"

    .prologue
    .line 669
    if-nez p1, :cond_0

    .line 670
    sget-object v0, Lcom/google/android/talk/RosterListItem;->sAnimatingItems:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 674
    :goto_0
    iput-object p1, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    .line 675
    return-void

    .line 672
    :cond_0
    sget-object v0, Lcom/google/android/talk/RosterListItem;->sAnimatingItems:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;JZLcom/google/android/talk/util/Markup;ZZZLcom/google/android/talk/RosterListAdapter$CallState;ZZ)V
    .locals 13
    .parameter "c"
    .parameter "accountId"
    .parameter "scrolling"
    .parameter "markup"
    .parameter "fastTrack"
    .parameter "narrow"
    .parameter "suppressIndent"
    .parameter "callState"
    .parameter "tabletMode"
    .parameter "suppressVideoButton"

    .prologue
    .line 709
    iget-boolean v1, p0, Lcom/google/android/talk/RosterListItem;->mComputedColumns:Z

    if-nez v1, :cond_0

    .line 710
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/talk/RosterListItem;->mComputedColumns:Z

    .line 711
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListItem;->init(Landroid/database/Cursor;)V

    .line 714
    :cond_0
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/talk/RosterListItem;->mMarkup:Lcom/google/android/talk/util/Markup;

    .line 715
    iput-object p1, p0, Lcom/google/android/talk/RosterListItem;->mCursor:Landroid/database/Cursor;

    .line 716
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/RosterListItem;->mCursorPos:I

    .line 717
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListItem;->mNarrow:Z

    .line 719
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;

    if-nez v1, :cond_1

    .line 747
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v12, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    .line 725
    .local v12, oldUsername:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    move-object v2, p1

    move-object/from16 v3, p9

    move/from16 v4, p8

    move-wide v5, p2

    move/from16 v7, p10

    move/from16 v8, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p11

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/talk/RosterListItem$BindHandler;->compute(Landroid/database/Cursor;Lcom/google/android/talk/RosterListAdapter$CallState;ZJZZZZZ)V

    .line 727
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    invoke-static {v1, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 728
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListItem;->jumpDrawablesToCurrentState()V

    .line 731
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListItem;->handleDebug(Landroid/database/Cursor;)V

    .line 733
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    const/4 v2, 0x0

    move-object/from16 v0, p5

    #calls: Lcom/google/android/talk/RosterListItem$BindHandler;->bindLines(Lcom/google/android/talk/util/Markup;Landroid/database/Cursor;Z)V
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3400(Lcom/google/android/talk/RosterListItem$BindHandler;Lcom/google/android/talk/util/Markup;Landroid/database/Cursor;Z)V

    .line 734
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    #calls: Lcom/google/android/talk/RosterListItem$BindHandler;->bindPresence(Landroid/database/Cursor;)V
    invoke-static {v1, p1}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3500(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/database/Cursor;)V

    .line 735
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    #calls: Lcom/google/android/talk/RosterListItem$BindHandler;->bindVideoButton(Landroid/database/Cursor;)V
    invoke-static {v1, p1}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3600(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/database/Cursor;)V

    .line 736
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    const/4 v2, 0x0

    #calls: Lcom/google/android/talk/RosterListItem$BindHandler;->bindShover(Z)V
    invoke-static {v1, v2}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3700(Lcom/google/android/talk/RosterListItem$BindHandler;Z)V

    .line 737
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    #calls: Lcom/google/android/talk/RosterListItem$BindHandler;->bindAvatar(Landroid/database/Cursor;)V
    invoke-static {v1, p1}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3800(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/database/Cursor;)V

    .line 738
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    const/4 v2, 0x0

    #calls: Lcom/google/android/talk/RosterListItem$BindHandler;->handleLayout(Z)V
    invoke-static {v1, v2}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3900(Lcom/google/android/talk/RosterListItem$BindHandler;Z)V

    .line 739
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    #calls: Lcom/google/android/talk/RosterListItem$BindHandler;->handleNarrow()V
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$4000(Lcom/google/android/talk/RosterListItem$BindHandler;)V

    .line 741
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    #getter for: Lcom/google/android/talk/RosterListItem$BindHandler;->suppressVideoButton:Z
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$4100(Lcom/google/android/talk/RosterListItem$BindHandler;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 742
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 743
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mSeparator:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 746
    :cond_3
    invoke-direct {p0}, Lcom/google/android/talk/RosterListItem;->handleAnimation()V

    goto :goto_0
.end method

.method public bindEmpty()V
    .locals 0

    .prologue
    .line 700
    return-void
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    if-nez v0, :cond_0

    .line 813
    const/4 v0, 0x0

    .line 815
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget v0, v0, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    goto :goto_0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getPresence()I
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    if-nez v0, :cond_0

    .line 806
    const/4 v0, 0x0

    .line 808
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget v0, v0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Lcom/google/android/talk/DividerDrawingListItem;->onFinishInflate()V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem;->mResources:Landroid/content/res/Resources;

    .line 136
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/RosterListItem;->mShoveDistance:I

    .line 138
    const v1, 0x7f10002d

    invoke-virtual {p0, v1}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;

    .line 139
    const v1, 0x7f10000b

    invoke-virtual {p0, v1}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;

    .line 140
    const v1, 0x7f10007b

    invoke-virtual {p0, v1}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;

    .line 141
    const v1, 0x7f100076

    invoke-virtual {p0, v1}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem;->mShover:Landroid/view/View;

    .line 142
    const v1, 0x7f10000e

    invoke-virtual {p0, v1}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem;->mPresenceView:Landroid/widget/ImageView;

    .line 143
    const v1, 0x7f10007a

    invoke-virtual {p0, v1}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem;->mVideoButtonView:Landroid/widget/ImageView;

    .line 144
    const v1, 0x7f100079

    invoke-virtual {p0, v1}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;

    .line 145
    const v1, 0x7f100077

    invoke-virtual {p0, v1}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;

    .line 146
    const v1, 0x7f100019

    invoke-virtual {p0, v1}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem;->mQuickBadge:Landroid/view/View;

    .line 147
    const v1, 0x7f10001a

    invoke-virtual {p0, v1}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem;->mNoQuickBadge:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mResources:Landroid/content/res/Resources;

    .line 151
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/RosterListItem;->mDefaultLine1TextColor:I

    .line 152
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/RosterListItem;->mDefaultLine2TextColor:I

    .line 154
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/RosterListItem;->mLine1Typeface:Landroid/graphics/Typeface;

    .line 157
    const v1, 0x7f100075

    invoke-virtual {p0, v1}, Lcom/google/android/talk/RosterListItem;->setId(I)V

    .line 158
    return-void
.end method

.method public onMovedToScrapHeap()V
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 956
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/talk/RosterListItem;->setAnimator(Landroid/animation/Animator;)V

    .line 958
    :cond_0
    return-void
.end method

.method public rebindAlternate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 791
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/talk/RosterListItem;->mCursorPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    #calls: Lcom/google/android/talk/RosterListItem$BindHandler;->bindShover(Z)V
    invoke-static {v0, v3}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3700(Lcom/google/android/talk/RosterListItem$BindHandler;Z)V

    .line 795
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem;->mMarkup:Lcom/google/android/talk/util/Markup;

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem;->mCursor:Landroid/database/Cursor;

    #calls: Lcom/google/android/talk/RosterListItem$BindHandler;->bindLines(Lcom/google/android/talk/util/Markup;Landroid/database/Cursor;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3400(Lcom/google/android/talk/RosterListItem$BindHandler;Lcom/google/android/talk/util/Markup;Landroid/database/Cursor;Z)V

    .line 796
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    #calls: Lcom/google/android/talk/RosterListItem$BindHandler;->handleLayout(Z)V
    invoke-static {v0, v3}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$3900(Lcom/google/android/talk/RosterListItem$BindHandler;Z)V

    .line 797
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;

    #calls: Lcom/google/android/talk/RosterListItem$BindHandler;->handleNarrow()V
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem$BindHandler;->access$4000(Lcom/google/android/talk/RosterListItem$BindHandler;)V

    .line 798
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListItem;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/RosterListItem;->setActivated(Z)V

    .line 802
    :cond_0
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 163
    return-void
.end method

.method public setIsSelfItem(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListItem;->mIsSelfItem:Z

    .line 842
    return-void
.end method

.method public setVideoPresenceAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mVideoButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mVideoButtonView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 573
    :cond_0
    return-void
.end method

.method protected shoverEnabled()Z
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem;->mShover:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
