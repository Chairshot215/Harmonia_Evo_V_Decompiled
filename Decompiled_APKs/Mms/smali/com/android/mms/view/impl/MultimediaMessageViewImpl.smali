.class public abstract Lcom/android/mms/view/impl/MultimediaMessageViewImpl;
.super Landroid/widget/LinearLayout;
.source "MultimediaMessageViewImpl.java"

# interfaces
.implements Lcom/android/mms/view/MultimediaMessageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;
    }
.end annotation


# static fields
.field private static mBoldSS:Landroid/text/style/StyleSpan;


# instance fields
.field protected bBlockOnClick:Z

.field protected callerCache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

.field protected mDetailView:Landroid/widget/TextView;

.field private mEvdoStatusIndicator:Landroid/widget/ImageView;

.field private mFakeEvdoStatusIndicator:Landroid/view/View;

.field private mFakeIndicator:Landroid/view/View;

.field private mFakeSentTimeView:Landroid/widget/TextView;

.field protected mFourthStatusIndicator:Landroid/widget/ImageView;

.field protected mFromSpan:Landroid/text/SpannableStringBuilder;

.field private mHighlight:Ljava/lang/String;

.field protected mImageBorder:Landroid/widget/ImageView;

.field protected mImageView:Landroid/widget/ImageView;

.field protected mIsLongClick:Z

.field private mIsTextEmpty:Z

.field protected mMmsView:Landroid/view/View;

.field protected mPhotoIcon:Landroid/widget/ImageView;

.field private mPhotoOnClickListener:Landroid/view/View$OnClickListener;

.field protected mPlayButton:Landroid/widget/ImageView;

.field protected mRightStatusIndicator:Landroid/widget/ImageView;

.field protected mSecStatusIndicator:Landroid/widget/ImageView;

.field protected mSentTimeView:Landroid/widget/TextView;

.field protected mSlideAttachmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/SlideAttachmentItemView;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubjectSpan:Landroid/text/SpannableStringBuilder;

.field protected mTextSize:I

.field protected mTextSpan:Landroid/text/SpannableStringBuilder;

.field protected mTextTouchListener:Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

.field protected mTextView:Landroid/widget/TextView;

.field private mTextViewLinkOnClick:Z

.field protected mTextViewOnClickListener:Landroid/view/View$OnClickListener;

.field protected mTextView_onTouch:Landroid/widget/TextView;

.field protected mThirdStatusIndicator:Landroid/widget/ImageView;

.field protected mTypeView:Landroid/widget/TextView;

.field private m_fLastX:F

.field private m_fLastY:F

.field private mcs:Landroid/content/res/ColorStateList;

.field rcText:Landroid/graphics/Rect;

.field rcView:Landroid/graphics/Rect;

.field private resetTextColorsRunnable:Ljava/lang/Runnable;

.field private resetTextViewColorsRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mBoldSS:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    .line 87
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    .line 88
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSubjectSpan:Landroid/text/SpannableStringBuilder;

    .line 103
    iput-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    .line 104
    iput-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mHighlight:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->bBlockOnClick:Z

    .line 121
    iput-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    .line 126
    iput v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastX:F

    .line 127
    iput v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastY:F

    .line 129
    iput-boolean v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewLinkOnClick:Z

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSlideAttachmentList:Ljava/util/ArrayList;

    .line 136
    iput v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSize:I

    .line 140
    iput-boolean v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mIsLongClick:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mIsTextEmpty:Z

    .line 235
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->rcView:Landroid/graphics/Rect;

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->rcText:Landroid/graphics/Rect;

    .line 381
    new-instance v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;-><init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPhotoOnClickListener:Landroid/view/View$OnClickListener;

    .line 410
    new-instance v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$2;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$2;-><init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 423
    new-instance v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$3;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$3;-><init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;

    .line 450
    new-instance v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;-><init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

    .line 895
    new-instance v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$6;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$6;-><init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->resetTextViewColorsRunnable:Ljava/lang/Runnable;

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    .line 87
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    .line 88
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSubjectSpan:Landroid/text/SpannableStringBuilder;

    .line 103
    iput-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    .line 104
    iput-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mHighlight:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->bBlockOnClick:Z

    .line 121
    iput-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    .line 126
    iput v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastX:F

    .line 127
    iput v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastY:F

    .line 129
    iput-boolean v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewLinkOnClick:Z

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSlideAttachmentList:Ljava/util/ArrayList;

    .line 136
    iput v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSize:I

    .line 140
    iput-boolean v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mIsLongClick:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mIsTextEmpty:Z

    .line 235
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->rcView:Landroid/graphics/Rect;

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->rcText:Landroid/graphics/Rect;

    .line 381
    new-instance v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$1;-><init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPhotoOnClickListener:Landroid/view/View$OnClickListener;

    .line 410
    new-instance v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$2;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$2;-><init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 423
    new-instance v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$3;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$3;-><init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;

    .line 450
    new-instance v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;-><init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

    .line 895
    new-instance v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$6;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$6;-><init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->resetTextViewColorsRunnable:Ljava/lang/Runnable;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewLinkOnClick:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewLinkOnClick:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mcs:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastX:F

    return p1
.end method

.method static synthetic access$402(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastY:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;ZLandroid/widget/TextView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->enableTextSelection(ZLandroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)[Landroid/text/style/ClickableSpan;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getClickableSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)[Landroid/text/style/ClickableSpan;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->resetTextViewColorsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private enableTextSelection(ZLandroid/widget/TextView;)V
    .locals 3
    .parameter "enalbe"
    .parameter "v"

    .prologue
    .line 918
    invoke-virtual {p2}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 919
    .local v0, method:Landroid/text/method/MovementMethod;
    if-eqz p1, :cond_2

    .line 920
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/textselection/HtcTextSelectionManager;

    if-nez v1, :cond_1

    .line 921
    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    .line 931
    :cond_1
    :goto_0
    return-void

    .line 926
    :cond_2
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    .line 927
    :cond_3
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 928
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method private getClickableSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)[Landroid/text/style/ClickableSpan;
    .locals 6
    .parameter "v"
    .parameter "buffer"
    .parameter "event"

    .prologue
    .line 432
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 433
    .local v3, x:I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 435
    .local v4, y:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    .line 436
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 438
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    add-int/2addr v3, v5

    .line 439
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 441
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 442
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 443
    .local v1, line:I
    int-to-float v5, v3

    invoke-virtual {v0, v1, v5}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 444
    .local v2, off:I
    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v2, v2, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ClickableSpan;

    return-object v5
.end method

.method private isShowSender()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 945
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportRemoveRedundantFrom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 946
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->isMultipleNumber()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsGroupThread:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 952
    :goto_0
    return v0

    .line 949
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 952
    goto :goto_0
.end method

.method private setSkinableListBackground()V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getListSelectorBackgroundResource(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->setBackgroundResource(I)V

    .line 232
    return-void
.end method


# virtual methods
.method public bindTo(Lcom/android/mms/msg/AbstractMessage;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    .line 158
    return-void
.end method

.method protected enableImageView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 768
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCollapseMode()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;

    if-nez v0, :cond_3

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageBorder:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    new-instance v1, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$4;

    invoke-direct {v1, p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$4;-><init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    new-instance v1, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$5;

    invoke-direct {v1, p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$5;-><init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 799
    :cond_3
    return-void
.end method

.method public fireEvent(Lcom/android/mms/view/Event;)V
    .locals 0
    .parameter "evt"

    .prologue
    .line 890
    return-void
.end method

.method public getIndicatorStatus()Z
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 939
    :cond_0
    const/4 v0, 0x1

    .line 940
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected inflateMmsView()V
    .locals 9

    .prologue
    const v4, 0x7f0e007e

    const/4 v8, 0x0

    .line 802
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 807
    const v3, 0x7f0e0068

    invoke-virtual {p0, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 808
    .local v2, stub:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 809
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 813
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMmsCollapseMode()Z

    move-result v3

    if-nez v3, :cond_5

    instance-of v3, p0, Lcom/android/mms/view/impl/TextMessageViewImplWithObj;

    if-nez v3, :cond_5

    .line 815
    instance-of v3, p0, Lcom/android/mms/view/impl/RelatedMultimediaMessageViewImpl;

    if-eqz v3, :cond_3

    .line 816
    invoke-virtual {p0, v4}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    .line 854
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 858
    .end local v2           #stub:Landroid/view/View;
    :cond_2
    return-void

    .line 819
    .restart local v2       #stub:Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    check-cast v1, Lcom/android/mms/msg/MixedMultimediaMessage;

    .line 821
    .local v1, msg:Lcom/android/mms/msg/MixedMultimediaMessage;
    invoke-virtual {v1}, Lcom/android/mms/msg/MixedMultimediaMessage;->getAttachmentCount()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/mms/msg/MixedMultimediaMessage;->isNeedExpandContent(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 822
    invoke-virtual {p0, v4}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    goto :goto_0

    .line 825
    :cond_4
    const v3, 0x7f0e00b2

    invoke-virtual {p0, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    .line 826
    const v3, 0x7f0e00b4

    invoke-virtual {p0, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    .line 830
    const v3, 0x7f0e00b6

    invoke-virtual {p0, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    .line 831
    const v3, 0x7f0e00b7

    invoke-virtual {p0, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    .line 834
    const v3, 0x7f0e00b5

    invoke-virtual {p0, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 835
    .local v0, action:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 836
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 841
    .end local v0           #action:Landroid/view/View;
    .end local v1           #msg:Lcom/android/mms/msg/MixedMultimediaMessage;
    :cond_5
    const v3, 0x7f0e0077

    invoke-virtual {p0, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    .line 842
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    const-string v6, "common_button_small"

    const v7, 0x7f0200d4

    invoke-static {v5, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 844
    const v3, 0x7f0e007a

    invoke-virtual {p0, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    .line 845
    const v3, 0x7f0e0079

    invoke-virtual {p0, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageBorder:Landroid/widget/ImageView;

    .line 846
    const v3, 0x7f0e007b

    invoke-virtual {p0, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPlayButton:Landroid/widget/ImageView;

    .line 849
    const v3, 0x7f0e007c

    invoke-virtual {p0, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    .line 850
    const v3, 0x7f0e007d

    invoke-virtual {p0, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    goto/16 :goto_0
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 893
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 164
    const v1, 0x7f0e0050

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    .line 166
    const v1, 0x7f0e0080

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    .line 167
    const v1, 0x7f0e006a

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    .line 170
    const v1, 0x7f0e0069

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mEvdoStatusIndicator:Landroid/widget/ImageView;

    .line 173
    const v1, 0x7f0e0065

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    .line 175
    const v1, 0x7f0e0066

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    .line 178
    const v1, 0x7f0e0067

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    .line 181
    const v1, 0x7f0e0086

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    .line 183
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 184
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPhotoOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 198
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    const v1, 0x7f0e0082

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFakeEvdoStatusIndicator:Landroid/view/View;

    .line 213
    const v1, 0x7f0e0084

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFakeIndicator:Landroid/view/View;

    .line 214
    const v1, 0x7f0e0083

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFakeSentTimeView:Landroid/widget/TextView;

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mcs:Landroid/content/res/ColorStateList;

    .line 223
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    const-string v2, "input_text_selection_highlight"

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 224
    .local v0, nResID:I
    if-eqz v0, :cond_1

    .line 225
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 226
    :cond_1
    return-void

    .line 218
    .end local v0           #nResID:I
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->setSkinableListBackground()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastX:F

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastY:F

    .line 242
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->rcView:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 247
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->rcText:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 249
    iget v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastX:F

    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->rcView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->rcText:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastX:F

    .line 250
    iget v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastY:F

    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->rcView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->rcText:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastY:F

    .line 253
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method postBindingView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 623
    invoke-static {}, Lcom/android/mms/MmsApp;->isDisableOutgoingFrom()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v8}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->isShowSender()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 624
    :cond_0
    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v8}, Lcom/android/mms/msg/AbstractMessage;->getFrom()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->setFrom(Ljava/lang/String;)V

    .line 626
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 627
    .local v0, buffer:Landroid/text/SpannableStringBuilder;
    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSubjectSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 628
    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSubjectSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 633
    :goto_0
    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mHighlight:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 634
    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mHighlight:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .line 636
    .local v2, highlightLen:I
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 637
    .local v7, s:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mHighlight:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, highlight:Ljava/lang/String;
    const/4 v6, 0x0

    .line 640
    .local v6, prev:I
    :goto_1
    invoke-virtual {v7, v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 641
    .local v3, index:I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_7

    .line 650
    .end local v1           #highlight:Ljava/lang/String;
    .end local v2           #highlightLen:I
    .end local v3           #index:I
    .end local v6           #prev:I
    .end local v7           #s:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-static {v8, v0}, Lcom/android/mms/ui/MyLinkify;->parseLinks(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 652
    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v8, v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 654
    invoke-static {}, Lcom/android/mms/MmsApp;->isDisableOutgoingFrom()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mAbsMsg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v8}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->isShowSender()Z

    move-result v8

    if-nez v8, :cond_9

    .line 655
    :cond_3
    const v8, 0x7f0e0076

    invoke-virtual {p0, v8}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 656
    .local v4, mmsLayout:Landroid/view/View;
    if-nez v4, :cond_4

    .line 657
    const v8, 0x7f0e0068

    invoke-virtual {p0, v8}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 659
    :cond_4
    if-eqz v4, :cond_5

    .line 660
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 661
    .local v5, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mIsTextEmpty:Z

    if-eqz v8, :cond_8

    .line 662
    invoke-virtual {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 668
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    .end local v4           #mmsLayout:Landroid/view/View;
    .end local v5           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    :goto_3
    return-void

    .line 630
    :cond_6
    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 644
    .restart local v1       #highlight:Ljava/lang/String;
    .restart local v2       #highlightLen:I
    .restart local v3       #index:I
    .restart local v6       #prev:I
    .restart local v7       #s:Ljava/lang/String;
    :cond_7
    new-instance v8, Landroid/text/style/StyleSpan;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int v9, v3, v2

    invoke-virtual {v0, v8, v3, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 645
    add-int v6, v3, v2

    .line 646
    goto :goto_1

    .line 665
    .end local v1           #highlight:Ljava/lang/String;
    .end local v2           #highlightLen:I
    .end local v3           #index:I
    .end local v6           #prev:I
    .end local v7           #s:Ljava/lang/String;
    .restart local v4       #mmsLayout:Landroid/view/View;
    .restart local v5       #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0096

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 666
    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 673
    .end local v4           #mmsLayout:Landroid/view/View;
    .end local v5           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    iget-object v8, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method preBindingView()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 526
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mcs:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 559
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mEvdoStatusIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mEvdoStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mEvdoStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    :cond_2
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageBorder:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 570
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageBorder:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mImageBorder:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    :cond_3
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPlayButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 575
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    :cond_4
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 579
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTypeView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    :cond_5
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 583
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    :cond_6
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_7

    .line 588
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 589
    :cond_7
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSubjectSpan:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_8

    .line 590
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSubjectSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 591
    :cond_8
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_9

    .line 592
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 596
    :cond_9
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 597
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iput-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mMmsView:Landroid/view/View;

    .line 603
    :cond_a
    const v1, 0x7f0e0068

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 604
    .local v0, stub:Landroid/view/View;
    if-eqz v0, :cond_b

    .line 605
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 609
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 610
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFakeIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFakeEvdoStatusIndicator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 614
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mIsTextEmpty:Z

    .line 615
    return-void
.end method

.method public setAttachInfoSavedText(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 869
    invoke-static {p1, p2}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getMmsSavedStatus(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    :cond_0
    return-void
.end method

.method public setCaller(Landroid/app/Activity;)V
    .locals 1
    .parameter "act"

    .prologue
    .line 695
    if-nez p1, :cond_0

    .line 697
    :goto_0
    return-void

    .line 696
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public setErrorFlag()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    return-void
.end method

.method public setEvdoicon(Z)V
    .locals 2
    .parameter "isevdo"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mEvdoStatusIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 907
    return-void
.end method

.method public setFakeIndicatorView()V
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFakeIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 913
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 5
    .parameter "sender"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 263
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 265
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    sget-object v1, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mBoldSS:Landroid/text/style/StyleSpan;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 271
    return-void
.end method

.method public setHighLightStr(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mHighlight:Ljava/lang/String;

    .line 732
    return-void
.end method

.method public setIncomingFlag()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public setIsSimSms(Z)V
    .locals 0
    .parameter "isSimSms"

    .prologue
    .line 879
    return-void
.end method

.method public setMarkIcon(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 728
    return-void
.end method

.method public setMePhotoIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 520
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 521
    return-void
.end method

.method public setMessageLocked()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02017c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    return-void
.end method

.method public setNGMGroupConversation()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 885
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    :cond_0
    return-void
.end method

.method public setPendingFlag()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02017f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    return-void
.end method

.method public setPhotoIcon(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 372
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/mms/util/ContactNameCache;->setContactPhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 373
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v1

    const v0, 0x7f0e007f

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, p1, v0}, Lcom/android/mms/util/ContactNameCache;->setPhotoIconOnClick(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 377
    return-void
.end method

.method public setPlayable(Z)V
    .locals 2
    .parameter "playable"

    .prologue
    .line 861
    if-eqz p1, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPlayButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mPlayButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 865
    :cond_0
    return-void
.end method

.method public setPriority(I)V
    .locals 3
    .parameter "pri"

    .prologue
    const/4 v2, 0x0

    .line 678
    packed-switch p1, :pswitch_data_0

    .line 688
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 691
    :goto_0
    return-void

    .line 680
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020102

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 681
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 684
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 685
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setReportIndicator(J)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-static {p1, p2}, Lcom/android/mms/util/ReportIndicatorCache;->isAllRead(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02017d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-static {p1, p2}, Lcom/android/mms/util/ReportIndicatorCache;->isGetAllDeliveryReport(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-static {p1, p2}, Lcom/android/mms/util/ReportIndicatorCache;->isAllRetrieved(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02017b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020172

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setRequireDeliveryReport()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    return-void
.end method

.method public setRequireReadReport()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    return-void
.end method

.method public setSentFlag()V
    .locals 0

    .prologue
    .line 727
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 5
    .parameter "subject"

    .prologue
    const/4 v4, 0x0

    .line 332
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSubjectSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSubjectSpan:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090032

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 335
    iput-boolean v4, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mIsTextEmpty:Z

    .line 337
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v0

    .line 344
    .local v0, parser:Lcom/android/mms/util/SmileyParser;
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 348
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mIsTextEmpty:Z

    .line 352
    .end local v0           #parser:Lcom/android/mms/util/SmileyParser;
    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 7
    .parameter "size"

    .prologue
    const/4 v6, 0x0

    .line 701
    iput p1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextSize:I

    .line 702
    iget-object v4, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    int-to-float v5, p1

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 706
    const/4 v2, 0x4

    .line 707
    .local v2, level_space:I
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/TextSizeManager;->getTextLevelSpace()I

    move-result v2

    .line 709
    iget-object v4, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    sub-int v5, p1, v2

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 713
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 714
    iget-object v4, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFakeSentTimeView:Landroid/widget/TextView;

    sub-int v5, p1, v2

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 718
    :cond_0
    iget-object v4, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 719
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 720
    iget-object v4, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSlideAttachmentList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/SlideAttachmentItemView;

    .line 721
    .local v3, slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    invoke-virtual {v3, v6, p1}, Lcom/android/mms/ui/SlideAttachmentItemView;->setTextSize(II)V

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    .end local v3           #slideAttachmentView:Lcom/android/mms/ui/SlideAttachmentItemView;
    :cond_1
    return-void
.end method

.method public setTimeReceived(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 294
    return-void
.end method

.method public setTimeRetried(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 279
    return-void
.end method

.method public setTimeSent(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampDetailString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, timeStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mFakeSentTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :cond_0
    return-void
.end method

.method public setUnread()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public startTextSelection()Z
    .locals 2

    .prologue
    .line 736
    const/4 v0, 0x0

    .line 738
    .local v0, textview:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView_onTouch:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 739
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView_onTouch:Landroid/widget/TextView;

    .line 743
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 744
    :cond_0
    const/4 v1, 0x0

    .line 764
    :goto_1
    return v1

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 764
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method
