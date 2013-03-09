.class public Lcom/android/mms/view/impl/TextMessageViewImpl;
.super Landroid/widget/LinearLayout;
.source "TextMessageViewImpl.java"

# interfaces
.implements Lcom/android/mms/view/TextMessageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;,
        Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;
    }
.end annotation


# static fields
.field private static final IMPORT_VCARD_STR:Ljava/lang/String; = "android.intent.action.IMPORT_VCARD_SELECT_FIELDS"

.field private static final SENDER_SPACE_STR:Ljava/lang/String; = ": "

.field private static final SMALL_BTN_STR:Ljava/lang/String; = "common_button_small"

.field private static final TXT_SELECT_HIGHLIGHT:Ljava/lang/String; = "input_text_selection_highlight"

.field private static mBoldSS:Landroid/text/style/StyleSpan;

.field private static mNormalSS:Landroid/text/style/StyleSpan;


# instance fields
.field public final EXTRA_URLS:Ljava/lang/String;

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

.field private mCallback:Ljava/lang/String;

.field private mEvdoStatusIndicator:Landroid/widget/ImageView;

.field private mFakeEvdoStatusIndicator:Landroid/view/View;

.field private mFakeIndicator:Landroid/view/View;

.field private mFakeSentTimeView:Landroid/widget/TextView;

.field private mFourthStatusIndicator:Landroid/widget/ImageView;

.field protected mFromSpan:Landroid/text/SpannableStringBuilder;

.field private mHighlight:Ljava/lang/String;

.field private mMessageItem:Lcom/android/mms/msg/TextMessage;

.field private mMsgId:J

.field private mPhotoIcon:Landroid/widget/ImageView;

.field private mPhotoOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/view/View;

.field private mRightStatusIndicator:Landroid/widget/ImageView;

.field private mSecStatusIndicator:Landroid/widget/ImageView;

.field private mSentTimeView:Landroid/widget/TextView;

.field private mTAS:Landroid/text/style/CharacterStyle;

.field protected mTextSpan:Landroid/text/SpannableStringBuilder;

.field private mTextTouchListener:Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewLinkOnClick:Z

.field private mTextViewOnClickListener:Landroid/view/View$OnClickListener;

.field private mThirdStatusIndicator:Landroid/widget/ImageView;

.field mVCardParseListener:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

.field private mVcard:[B

.field private m_fLastX:F

.field private m_fLastY:F

.field private mcs:Landroid/content/res/ColorStateList;

.field private rcText:Landroid/graphics/Rect;

.field private rcView:Landroid/graphics/Rect;

.field private resetTextColorsRunnable:Ljava/lang/Runnable;

.field private resetTextViewColorsRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 420
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mNormalSS:Landroid/text/style/StyleSpan;

    .line 421
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mBoldSS:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    const-string v0, "com.android.mms.ExtraUrls"

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->EXTRA_URLS:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    .line 92
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    .line 102
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    .line 104
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mCallback:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mHighlight:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    .line 110
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVCardParseListener:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    .line 112
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVcard:[B

    .line 113
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMsgId:J

    .line 116
    iput v3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastX:F

    .line 117
    iput v3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastY:F

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextViewLinkOnClick:Z

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->rcView:Landroid/graphics/Rect;

    .line 267
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->rcText:Landroid/graphics/Rect;

    .line 427
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTAS:Landroid/text/style/CharacterStyle;

    .line 657
    new-instance v0, Lcom/android/mms/view/impl/TextMessageViewImpl$2;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/TextMessageViewImpl$2;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mPhotoOnClickListener:Landroid/view/View$OnClickListener;

    .line 685
    new-instance v0, Lcom/android/mms/view/impl/TextMessageViewImpl$3;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/TextMessageViewImpl$3;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 700
    new-instance v0, Lcom/android/mms/view/impl/TextMessageViewImpl$4;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/TextMessageViewImpl$4;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;

    .line 726
    new-instance v0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;

    .line 1087
    new-instance v0, Lcom/android/mms/view/impl/TextMessageViewImpl$5;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/TextMessageViewImpl$5;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->resetTextViewColorsRunnable:Ljava/lang/Runnable;

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const-string v0, "com.android.mms.ExtraUrls"

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->EXTRA_URLS:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    .line 92
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    .line 102
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    .line 104
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mCallback:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mHighlight:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    .line 110
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVCardParseListener:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    .line 112
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVcard:[B

    .line 113
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMsgId:J

    .line 116
    iput v3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastX:F

    .line 117
    iput v3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastY:F

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextViewLinkOnClick:Z

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->rcView:Landroid/graphics/Rect;

    .line 267
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->rcText:Landroid/graphics/Rect;

    .line 427
    iput-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTAS:Landroid/text/style/CharacterStyle;

    .line 657
    new-instance v0, Lcom/android/mms/view/impl/TextMessageViewImpl$2;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/TextMessageViewImpl$2;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mPhotoOnClickListener:Landroid/view/View$OnClickListener;

    .line 685
    new-instance v0, Lcom/android/mms/view/impl/TextMessageViewImpl$3;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/TextMessageViewImpl$3;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 700
    new-instance v0, Lcom/android/mms/view/impl/TextMessageViewImpl$4;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/TextMessageViewImpl$4;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;

    .line 726
    new-instance v0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;

    .line 1087
    new-instance v0, Lcom/android/mms/view/impl/TextMessageViewImpl$5;

    invoke-direct {v0, p0}, Lcom/android/mms/view/impl/TextMessageViewImpl$5;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->resetTextViewColorsRunnable:Ljava/lang/Runnable;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/view/impl/TextMessageViewImpl;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVcard:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/view/impl/TextMessageViewImpl;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVcard:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/view/impl/TextMessageViewImpl;)Lcom/android/mms/msg/TextMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/view/impl/TextMessageViewImpl;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastY:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/view/impl/TextMessageViewImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->isCallerComposeMessageActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/view/impl/TextMessageViewImpl;ZLandroid/widget/TextView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/mms/view/impl/TextMessageViewImpl;->enableTextSelection(ZLandroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/view/impl/TextMessageViewImpl;Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)[Landroid/text/style/ClickableSpan;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getClickableSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)[Landroid/text/style/ClickableSpan;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/view/impl/TextMessageViewImpl;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/view/impl/TextMessageViewImpl;Lcom/android/vcard/VCardEntry;Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setVcardInfo(Lcom/android/vcard/VCardEntry;Landroid/text/SpannableStringBuilder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/view/impl/TextMessageViewImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setRightButtonListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/view/impl/TextMessageViewImpl;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/view/impl/TextMessageViewImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextViewLinkOnClick:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/mms/view/impl/TextMessageViewImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextViewLinkOnClick:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/mms/view/impl/TextMessageViewImpl;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mcs:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/view/impl/TextMessageViewImpl;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastX:F

    return p1
.end method

.method private enableTextSelection(ZLandroid/widget/TextView;)V
    .locals 3
    .parameter "enalbe"
    .parameter "v"

    .prologue
    .line 1126
    invoke-virtual {p2}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 1127
    .local v0, method:Landroid/text/method/MovementMethod;
    if-eqz p1, :cond_2

    .line 1128
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/textselection/HtcTextSelectionManager;

    if-nez v1, :cond_1

    .line 1129
    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->enableHtcTextSelection(ZI)V

    .line 1139
    :cond_1
    :goto_0
    return-void

    .line 1134
    :cond_2
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    .line 1135
    :cond_3
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 1136
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method private getClickableSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)[Landroid/text/style/ClickableSpan;
    .locals 6
    .parameter "v"
    .parameter "buffer"
    .parameter "event"

    .prologue
    .line 709
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 710
    .local v3, x:I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 712
    .local v4, y:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    .line 713
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 715
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    add-int/2addr v3, v5

    .line 716
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 718
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 719
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 720
    .local v1, line:I
    int-to-float v5, v3

    invoke-virtual {v0, v1, v5}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 721
    .local v2, off:I
    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v2, v2, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ClickableSpan;

    return-object v5
.end method

.method private getPrimarySpan()Landroid/text/style/StyleSpan;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mNormalSS:Landroid/text/style/StyleSpan;

    return-object v0
.end method

.method private getSecondarySpan()Landroid/text/style/CharacterStyle;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTAS:Landroid/text/style/CharacterStyle;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x777778

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTAS:Landroid/text/style/CharacterStyle;

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTAS:Landroid/text/style/CharacterStyle;

    return-object v0
.end method

.method private isCallerComposeMessageActivity()Z
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v0, :cond_0

    .line 1119
    const/4 v0, 0x1

    .line 1122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowSender()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1172
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportRemoveRedundantFrom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1173
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->isMultipleNumber()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsGroupThread:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 1179
    :goto_0
    return v0

    .line 1176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1179
    goto :goto_0
.end method

.method private setPrivacy(I)V
    .locals 2
    .parameter "privacy"

    .prologue
    .line 1154
    packed-switch p1, :pswitch_data_0

    .line 1163
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1164
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1167
    :goto_0
    return-void

    .line 1159
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02016f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1160
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setPropertySpan(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 4
    .parameter "label"
    .parameter "data"
    .parameter "builder"

    .prologue
    const/16 v3, 0x21

    .line 410
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 411
    .local v0, last:I
    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 412
    invoke-direct {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getPrimarySpan()Landroid/text/style/StyleSpan;

    move-result-object v1

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 414
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 415
    invoke-virtual {p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 416
    invoke-direct {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getSecondarySpan()Landroid/text/style/CharacterStyle;

    move-result-object v1

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 418
    return-void
.end method

.method private setRightButtonListener()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightButton:Landroid/view/View;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightButton:Landroid/view/View;

    new-instance v1, Lcom/android/mms/view/impl/TextMessageViewImpl$1;

    invoke-direct {v1, p0}, Lcom/android/mms/view/impl/TextMessageViewImpl$1;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setSkinableListBackground()V
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getListSelectorBackgroundResource(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setBackgroundResource(I)V

    .line 204
    return-void
.end method

.method private setSmileySpan(Ljava/lang/String;)V
    .locals 10
    .parameter "text"

    .prologue
    .line 553
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 555
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v3

    .line 556
    .local v3, parser:Lcom/android/mms/util/SmileyParser;
    iget-object v6, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 558
    iget-object v6, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mHighlight:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 559
    iget-object v6, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mHighlight:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 561
    .local v1, highlightLen:I
    iget-object v6, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 562
    .local v5, s:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mHighlight:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, highlight:Ljava/lang/String;
    const/4 v4, 0x0

    .line 565
    .local v4, prev:I
    :goto_0
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 566
    .local v2, index:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 578
    .end local v0           #highlight:Ljava/lang/String;
    .end local v1           #highlightLen:I
    .end local v2           #index:I
    .end local v3           #parser:Lcom/android/mms/util/SmileyParser;
    .end local v4           #prev:I
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    return-void

    .line 569
    .restart local v0       #highlight:Ljava/lang/String;
    .restart local v1       #highlightLen:I
    .restart local v2       #index:I
    .restart local v3       #parser:Lcom/android/mms/util/SmileyParser;
    .restart local v4       #prev:I
    .restart local v5       #s:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/android/mms/view/impl/TextMessageViewImpl;->mBoldSS:Landroid/text/style/StyleSpan;

    add-int v8, v2, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 570
    add-int v4, v2, v1

    .line 571
    goto :goto_0
.end method

.method private setVcardInfo(Lcom/android/vcard/VCardEntry;Landroid/text/SpannableStringBuilder;)V
    .locals 11
    .parameter "struct"
    .parameter "builder"

    .prologue
    const/16 v10, 0x21

    const/16 v9, 0xa

    .line 442
    iget-object v7, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mContext:Landroid/content/Context;

    const v8, 0x7f0901da

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 443
    const/4 v6, 0x0

    .line 444
    .local v6, start:I
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 445
    .local v4, last:I
    invoke-direct {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getSecondarySpan()Landroid/text/style/CharacterStyle;

    move-result-object v7

    invoke-virtual {p2, v7, v6, v4, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 446
    move v6, v4

    .line 447
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 449
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 450
    invoke-direct {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getPrimarySpan()Landroid/text/style/StyleSpan;

    move-result-object v7

    invoke-virtual {p2, v7, v6, v4, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 451
    move v6, v4

    .line 452
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 454
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v5

    .line 455
    .local v5, phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    if-eqz v5, :cond_1

    .line 456
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 457
    .local v0, data:Lcom/android/vcard/VCardEntry$PhoneData;
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, label:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 459
    iget-object v7, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 461
    :cond_0
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v7, p2}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setPropertySpan(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 465
    .end local v0           #data:Lcom/android/vcard/VCardEntry$PhoneData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #label:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v1

    .line 466
    .local v1, emailList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$EmailData;>;"
    if-eqz v1, :cond_2

    .line 467
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EmailData;

    .line 468
    .local v0, data:Lcom/android/vcard/VCardEntry$EmailData;
    iget-object v7, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mContext:Landroid/content/Context;

    const v8, 0x7f09025d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 474
    .restart local v3       #label:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v7, p2}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setPropertySpan(Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    goto :goto_1

    .line 477
    .end local v0           #data:Lcom/android/vcard/VCardEntry$EmailData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #label:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {p2, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 478
    return-void
.end method


# virtual methods
.method public bindTo(Lcom/android/mms/msg/AbstractMessage;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMsgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMsgId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    move-object v0, p1

    check-cast v0, Lcom/android/mms/msg/TextMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/msg/TextMessage;->compareTo(Lcom/android/mms/msg/TextMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setPhotoIcon(Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMePhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setMePhotoIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMsgId:J

    .line 229
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->preBindingView()V

    .line 234
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    if-nez v0, :cond_4

    .line 235
    new-instance v0, Lcom/android/mms/msg/TextMessage;

    invoke-direct {v0, p1}, Lcom/android/mms/msg/TextMessage;-><init>(Lcom/android/mms/msg/AbstractMessage;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    .line 244
    :goto_1
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    invoke-virtual {v0}, Lcom/android/mms/msg/TextMessage;->getMessageId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getSmsSavedStatus(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f02018c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 251
    :goto_2
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    invoke-virtual {v0}, Lcom/android/mms/msg/TextMessage;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    invoke-virtual {v0}, Lcom/android/mms/msg/TextMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mCallback:Ljava/lang/String;

    .line 254
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsPrivacyInd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    invoke-virtual {v0}, Lcom/android/mms/msg/TextMessage;->getSmsPrivacy()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setPrivacy(I)V

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    invoke-static {p0, v0}, Lcom/android/mms/view/ctl/TextMessageViewCtl;->bind(Lcom/android/mms/view/MessageView;Lcom/android/mms/msg/AbstractMessage;)V

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->postBindingView(Lcom/android/mms/msg/AbstractMessage;)V

    goto :goto_0

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/msg/TextMessage;->copyMsgValue(Lcom/android/mms/msg/AbstractMessage;)V

    goto :goto_1

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2
.end method

.method public fireEvent(Lcom/android/mms/view/Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 849
    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v1

    .line 850
    .local v1, spans:[Landroid/text/style/URLSpan;
    array-length v2, v1

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 853
    .local v0, disable:Z
    :goto_0
    const/16 v2, 0xa8

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mCallback:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 856
    const/4 v0, 0x0

    .line 864
    :cond_0
    if-eqz v0, :cond_1

    .line 894
    :cond_1
    return-void

    .line 850
    .end local v0           #disable:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoundItem()Lcom/android/mms/msg/AbstractMessage;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    return-object v0
.end method

.method public getIndicatorStatus()Z
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1147
    :cond_0
    const/4 v0, 0x1

    .line 1148
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 141
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 142
    const v1, 0x7f0e0050

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    .line 144
    const v1, 0x7f0e0080

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    .line 145
    const v1, 0x7f0e006a

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    .line 146
    const v1, 0x7f0e0069

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mEvdoStatusIndicator:Landroid/widget/ImageView;

    .line 147
    const v1, 0x7f0e0065

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    .line 148
    const v1, 0x7f0e0066

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    .line 149
    const v1, 0x7f0e0067

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    .line 150
    const v1, 0x7f0e0086

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    .line 152
    const v1, 0x7f0e0081

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightButton:Landroid/view/View;

    .line 154
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mContext:Landroid/content/Context;

    const-string v4, "common_button_small"

    const v5, 0x7f0200d4

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 158
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mPhotoOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 170
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 172
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextTouchListener:Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    const v1, 0x7f0e0082

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFakeEvdoStatusIndicator:Landroid/view/View;

    .line 185
    const v1, 0x7f0e0084

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFakeIndicator:Landroid/view/View;

    .line 186
    const v1, 0x7f0e0083

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFakeSentTimeView:Landroid/widget/TextView;

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mcs:Landroid/content/res/ColorStateList;

    .line 195
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mContext:Landroid/content/Context;

    const-string v2, "input_text_selection_highlight"

    invoke-static {v1, v2, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 196
    .local v0, nResID:I
    if-eqz v0, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 198
    :cond_1
    return-void

    .line 190
    .end local v0           #nResID:I
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setSkinableListBackground()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastX:F

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastY:F

    .line 274
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->rcView:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 279
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->rcText:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 281
    iget v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastX:F

    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->rcView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->rcText:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastX:F

    .line 282
    iget v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastY:F

    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->rcView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->rcText:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastY:F

    .line 285
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method postBindingView(Lcom/android/mms/msg/AbstractMessage;)V
    .locals 3
    .parameter "mAbsMsg"

    .prologue
    .line 954
    invoke-static {}, Lcom/android/mms/MmsApp;->isDisableOutgoingFrom()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->isShowSender()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 955
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setFrom(Ljava/lang/String;)V

    .line 957
    :cond_1
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVcard:[B

    if-eqz v1, :cond_2

    .line 966
    :goto_0
    return-void

    .line 959
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 961
    .local v0, buffer:Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MyLinkify;->parseLinks(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 963
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 965
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method preBindingView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 904
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 908
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 916
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 918
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 919
    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVcard:[B

    .line 922
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 923
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 925
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 928
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFourthStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 932
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mEvdoStatusIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mEvdoStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mEvdoStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 937
    :cond_0
    iput-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mCallback:Ljava/lang/String;

    .line 942
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mcs:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 945
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFakeIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFakeEvdoStatusIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 950
    :cond_1
    return-void
.end method

.method public setCaller(Landroid/app/Activity;)V
    .locals 1
    .parameter "act"

    .prologue
    .line 970
    if-nez p1, :cond_0

    .line 972
    :goto_0
    return-void

    .line 971
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public setDeliveryReportIcon()V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02017b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1053
    return-void
.end method

.method public setErrorFlag()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    return-void
.end method

.method public setEvdoicon(Z)V
    .locals 3
    .parameter "isevdo"

    .prologue
    const/4 v2, 0x0

    .line 1099
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mEvdoStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1100
    if-eqz p1, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mEvdoStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020170

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1105
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFakeEvdoStatusIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    :cond_0
    return-void

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mEvdoStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setFakeIndicatorView()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFakeIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 5
    .parameter "sender"

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 359
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 361
    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isLanguageFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    sget-object v1, Lcom/android/mms/view/impl/TextMessageViewImpl;->mBoldSS:Landroid/text/style/StyleSpan;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 367
    return-void
.end method

.method public setHighLightStr(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mHighlight:Ljava/lang/String;

    .line 1045
    return-void
.end method

.method public setIncomingFlag()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public setIsSimSms(Z)V
    .locals 2
    .parameter "isSimSms"

    .prologue
    .line 329
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020180

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMarkIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 1034
    if-gez p1, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020102

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1039
    :goto_0
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1040
    return-void

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setMePhotoIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 844
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 845
    return-void
.end method

.method public setMessageLocked()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02017c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mRightStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    return-void
.end method

.method public setPendingFlag()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02017f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    return-void
.end method

.method public setPhotoIcon(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 648
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/mms/util/ContactNameCache;->setContactPhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 649
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mPhotoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 651
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v1

    const v0, 0x7f0e007f

    invoke-virtual {p0, v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, p1, v0}, Lcom/android/mms/util/ContactNameCache;->setPhotoIconOnClick(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 653
    return-void
.end method

.method public setPriority(I)V
    .locals 7
    .parameter "pri"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const v4, 0x7f020102

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 996
    invoke-static {}, Lcom/android/mms/MmsApp;->getSMSHighPriorityLevel()I

    move-result v0

    .line 997
    .local v0, highPriorityLevel:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 998
    if-lt p1, v0, :cond_1

    .line 999
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1000
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1003
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1007
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSpecialSMSpriority()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1008
    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-ne p1, v6, :cond_4

    .line 1009
    :cond_3
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1010
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1012
    :cond_4
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1013
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1016
    :cond_5
    if-nez p1, :cond_6

    .line 1017
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1018
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1019
    :cond_6
    if-gt p1, v6, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1021
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mThirdStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRequireDeliveryReport()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    return-void
.end method

.method public setSentFlag()V
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1028
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSecStatusIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1029
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 582
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 583
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextSpan:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 585
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "BEGIN:VCARD"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "END:VCARD"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 589
    const/4 v3, 0x0

    .line 590
    .local v3, struct:Lcom/android/vcard/VCardEntry;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVcard:[B

    .line 591
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v2

    .line 592
    .local v2, ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    if-eqz v2, :cond_3

    .line 593
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/TextMessage;->getMessageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getSMSVCardEntry(J)Lcom/android/vcard/VCardEntry;

    move-result-object v3

    .line 595
    if-eqz v3, :cond_1

    .line 596
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 597
    .local v1, builder:Landroid/text/SpannableStringBuilder;
    invoke-direct {p0, v3, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setVcardInfo(Lcom/android/vcard/VCardEntry;Landroid/text/SpannableStringBuilder;)V

    .line 599
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 603
    .local v0, bufferFrom:Landroid/text/SpannableStringBuilder;
    const-string v4, "kelvin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set textView: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setRightButtonListener()V

    .line 605
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-static {v4, v0}, Lcom/android/mms/ui/MyLinkify;->parseLinks(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 607
    invoke-static {}, Lcom/android/mms/MmsApp;->isDisableOutgoingFrom()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/TextMessage;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->isMultipleNumber()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 609
    :cond_0
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 615
    :goto_0
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 616
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 644
    .end local v0           #bufferFrom:Landroid/text/SpannableStringBuilder;
    .end local v1           #builder:Landroid/text/SpannableStringBuilder;
    .end local v2           #ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    .end local v3           #struct:Lcom/android/vcard/VCardEntry;
    :cond_1
    :goto_1
    return-void

    .line 612
    .restart local v0       #bufferFrom:Landroid/text/SpannableStringBuilder;
    .restart local v1       #builder:Landroid/text/SpannableStringBuilder;
    .restart local v2       #ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    .restart local v3       #struct:Lcom/android/vcard/VCardEntry;
    :cond_2
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 622
    .end local v0           #bufferFrom:Landroid/text/SpannableStringBuilder;
    .end local v1           #builder:Landroid/text/SpannableStringBuilder;
    :cond_3
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVCardParseListener:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVCardParseListener:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v4, v4, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mMessageToken:Lcom/android/mms/msg/TextMessage;

    iget-object v5, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVCardParseListener:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v4, v4, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThread:Ljava/lang/Thread;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVCardParseListener:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v4, v4, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 626
    const-string v4, "kelvin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interrupt thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVCardParseListener:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v6, v6, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThread:Ljava/lang/Thread;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVCardParseListener:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v4, v4, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 628
    iput-object v7, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVCardParseListener:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    .line 630
    :cond_4
    new-instance v4, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v5, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;

    invoke-direct {v4, p0, p0, v5}, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl;Lcom/android/mms/view/impl/TextMessageViewImpl;Lcom/android/mms/msg/TextMessage;)V

    iput-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVCardParseListener:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    .line 631
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVcard:[B

    .line 632
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVCardParseListener:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v6, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mVcard:[B

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/ui/VCardUtils;->binaryVCardToStructure(Landroid/content/Context;Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;[BLandroid/accounts/Account;)V

    goto :goto_1

    .line 643
    .end local v2           #ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    .end local v3           #struct:Lcom/android/vcard/VCardEntry;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setSmileySpan(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setTextSize(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 978
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    int-to-float v2, p1

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 982
    const/4 v0, 0x4

    .line 983
    .local v0, level_space:I
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/TextSizeManager;->getTextLevelSpace()I

    move-result v0

    .line 985
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    sub-int v2, p1, v0

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 988
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFakeSentTimeView:Landroid/widget/TextView;

    sub-int v2, p1, v0

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 991
    :cond_0
    return-void
.end method

.method public setTimeReceived(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 309
    return-void
.end method

.method public setTimeRetried(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 306
    return-void
.end method

.method public setTimeSent(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampDetailString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, timeStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mSentTimeView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFakeSentTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :cond_0
    return-void
.end method

.method public setUnread()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public startTextSelection()Z
    .locals 1

    .prologue
    .line 1057
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->isCallerComposeMessageActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1059
    :cond_0
    const/4 v0, 0x0

    .line 1084
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
