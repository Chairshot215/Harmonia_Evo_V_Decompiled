.class public final Lcom/android/mms/ui/MessageTextEditor;
.super Landroid/widget/EditText;
.source "MessageTextEditor.java"


# static fields
.field private static final CHARS_REMAINING_BEFORE_COUNTER_SHOWN:I = 0xa

.field private static final IME_TEXT_SIZE_MMS:I = 0x9

.field private static final IME_TEXT_SIZE_SMS:I = 0xa

.field private static KDDI_PACKETSMS_PAYLOAD_MAX:I = 0x0

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "MessageTextEditor"


# instance fields
.field private MMSLIMIT:Ljava/lang/String;

.field private bForceEmailMMS:Z

.field private mBeforeOnTouchListener:Landroid/view/View$OnTouchListener;

.field mBeforeTextCount:I

.field private mBlockCompletion:Z

.field private mDefaultTextCountText:Ljava/lang/String;

.field private mEditorCounterTextSize:I

.field private mIsForward:Z

.field private final mKddiTextWatcher:Landroid/text/TextWatcher;

.field private mKeyboardOpen:Z

.field private mMaxChar:I

.field private mMmsSize:I

.field private mMsgCount:I

.field private mMsgSize:I

.field private mNli:I

.field private mReachLimitRunnable:Ljava/lang/Runnable;

.field private mSMSEmailString:Ljava/lang/String;

.field private mSMSSubjectString:Ljava/lang/String;

.field private mSegCounter:Landroid/widget/TextView;

.field private mSmsMode:Z

.field private mSmsToMmsThreshold:I

.field private mTextCounter:Landroid/widget/TextView;

.field private final mTextWatcher:Landroid/text/TextWatcher;

.field private mWatcher:Lcom/android/mms/ui/StateWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/16 v0, 0x64

    sput v0, Lcom/android/mms/ui/MessageTextEditor;->KDDI_PACKETSMS_PAYLOAD_MAX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 65
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    .line 90
    iput v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    .line 104
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mIsForward:Z

    .line 109
    iput v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mBeforeTextCount:I

    .line 113
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mMaxChar:I

    .line 114
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mEditorCounterTextSize:I

    .line 117
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageTextEditor;->bForceEmailMMS:Z

    .line 124
    new-instance v0, Lcom/android/mms/ui/MessageTextEditor$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTextEditor$1;-><init>(Lcom/android/mms/ui/MessageTextEditor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextWatcher:Landroid/text/TextWatcher;

    .line 571
    iput v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    .line 601
    iput-object v3, p0, Lcom/android/mms/ui/MessageTextEditor;->MMSLIMIT:Ljava/lang/String;

    .line 904
    new-instance v0, Lcom/android/mms/ui/MessageTextEditor$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTextEditor$2;-><init>(Lcom/android/mms/ui/MessageTextEditor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mReachLimitRunnable:Ljava/lang/Runnable;

    .line 911
    new-instance v0, Lcom/android/mms/ui/MessageTextEditor$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTextEditor$3;-><init>(Lcom/android/mms/ui/MessageTextEditor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mKddiTextWatcher:Landroid/text/TextWatcher;

    .line 983
    iput-object v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mDefaultTextCountText:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/android/mms/ui/MessageTextEditor;->init()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    .line 90
    iput v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    .line 104
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mIsForward:Z

    .line 109
    iput v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mBeforeTextCount:I

    .line 113
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mMaxChar:I

    .line 114
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mEditorCounterTextSize:I

    .line 117
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageTextEditor;->bForceEmailMMS:Z

    .line 124
    new-instance v0, Lcom/android/mms/ui/MessageTextEditor$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTextEditor$1;-><init>(Lcom/android/mms/ui/MessageTextEditor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextWatcher:Landroid/text/TextWatcher;

    .line 571
    iput v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    .line 601
    iput-object v3, p0, Lcom/android/mms/ui/MessageTextEditor;->MMSLIMIT:Ljava/lang/String;

    .line 904
    new-instance v0, Lcom/android/mms/ui/MessageTextEditor$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTextEditor$2;-><init>(Lcom/android/mms/ui/MessageTextEditor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mReachLimitRunnable:Ljava/lang/Runnable;

    .line 911
    new-instance v0, Lcom/android/mms/ui/MessageTextEditor$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTextEditor$3;-><init>(Lcom/android/mms/ui/MessageTextEditor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mKddiTextWatcher:Landroid/text/TextWatcher;

    .line 983
    iput-object v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mDefaultTextCountText:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/android/mms/ui/MessageTextEditor;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    .line 90
    iput v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    .line 104
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mIsForward:Z

    .line 109
    iput v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mBeforeTextCount:I

    .line 113
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mMaxChar:I

    .line 114
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mEditorCounterTextSize:I

    .line 117
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageTextEditor;->bForceEmailMMS:Z

    .line 124
    new-instance v0, Lcom/android/mms/ui/MessageTextEditor$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTextEditor$1;-><init>(Lcom/android/mms/ui/MessageTextEditor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextWatcher:Landroid/text/TextWatcher;

    .line 571
    iput v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    .line 601
    iput-object v3, p0, Lcom/android/mms/ui/MessageTextEditor;->MMSLIMIT:Ljava/lang/String;

    .line 904
    new-instance v0, Lcom/android/mms/ui/MessageTextEditor$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTextEditor$2;-><init>(Lcom/android/mms/ui/MessageTextEditor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mReachLimitRunnable:Ljava/lang/Runnable;

    .line 911
    new-instance v0, Lcom/android/mms/ui/MessageTextEditor$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTextEditor$3;-><init>(Lcom/android/mms/ui/MessageTextEditor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mKddiTextWatcher:Landroid/text/TextWatcher;

    .line 983
    iput-object v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mDefaultTextCountText:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/android/mms/ui/MessageTextEditor;->init()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageTextEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageTextEditor;)Lcom/android/mms/ui/StateWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageTextEditor;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageTextEditor;->setTextWithoutWatcher(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageTextEditor;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mReachLimitRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageTextEditor;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageTextEditor;->kddiUpdateTextCounter(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageTextEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/MessageTextEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageTextEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mIsForward:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageTextEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mNli:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageTextEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsToMmsThreshold:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageTextEditor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/MessageTextEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageTextEditor;->bForceEmailMMS:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/mms/ui/MessageTextEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mMaxChar:I

    return p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/android/mms/ui/MessageTextEditor;->KDDI_PACKETSMS_PAYLOAD_MAX:I

    return v0
.end method

.method private getDefaultTextCounterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mDefaultTextCountText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 986
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPacketSms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0 / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/mms/ui/MessageTextEditor;->KDDI_PACKETSMS_PAYLOAD_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mDefaultTextCountText:Ljava/lang/String;

    .line 992
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mDefaultTextCountText:Ljava/lang/String;

    return-object v0

    .line 989
    :cond_1
    const-string v0, "0 / 160"

    iput-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mDefaultTextCountText:Ljava/lang/String;

    goto :goto_0
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 304
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPacketSms()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 305
    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mKddiTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageTextEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 306
    sget v5, Lcom/android/mms/ui/MessageTextEditor;->KDDI_PACKETSMS_PAYLOAD_MAX:I

    iput v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mMaxChar:I

    .line 307
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessageTextEditor;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 308
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 310
    const-string v5, "allowEmoji"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-ne v5, v7, :cond_5

    invoke-static {}, Lcom/android/mms/MmsApp;->isGreekInputType7bit()Z

    move-result v5

    if-ne v5, v7, :cond_5

    .line 322
    const v5, 0x24981

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageTextEditor;->setInputType(I)V

    .line 330
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPostSpellingCheck()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getInputType()I

    move-result v5

    const/high16 v6, 0x80

    or-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageTextEditor;->setInputType(I)V

    .line 336
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Landroid/telephony/SmsMessage;->getNliFromLocale(Ljava/util/Locale;)I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mNli:I

    .line 338
    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableAccentConvert()Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 342
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mNli:I

    .line 349
    :cond_2
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/model/ContentRestriction;->getMaxSizePerSmsMessage()I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsToMmsThreshold:I

    .line 357
    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableAccentConvert()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 358
    new-array v5, v7, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/mms/util/AccentFilter;

    invoke-direct {v7}, Lcom/android/mms/util/AccentFilter;-><init>()V

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageTextEditor;->setFilters([Landroid/text/InputFilter;)V

    .line 361
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getPaddingLeft()I

    move-result v2

    .line 362
    .local v2, nLeft:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getPaddingTop()I

    move-result v4

    .line 363
    .local v4, nTop:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getPaddingRight()I

    move-result v3

    .line 364
    .local v3, nRight:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getPaddingBottom()I

    move-result v1

    .line 366
    .local v1, nBottom:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mContext:Landroid/content/Context;

    const-string v7, "msg_input_editor"

    const v8, 0x7f020191

    invoke-static {v6, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageTextEditor;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/android/mms/ui/MessageTextEditor;->setPadding(IIII)V

    .line 371
    return-void

    .line 315
    .end local v1           #nBottom:I
    .end local v2           #nLeft:I
    .end local v3           #nRight:I
    .end local v4           #nTop:I
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageTextEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 326
    :cond_5
    const v5, 0x24001

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageTextEditor;->setInputType(I)V

    goto :goto_1
.end method

.method private kddiUpdateCounter()V
    .locals 5

    .prologue
    .line 997
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1000
    .local v1, text:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/mms/custom/CustomizedManager;->kddiCalculateMsgSize(Ljava/lang/String;)I

    move-result v0

    .line 1001
    .local v0, byteSize:I
    iget v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsToMmsThreshold:I

    iput v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    .line 1002
    iput v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgSize:I

    .line 1003
    iget v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    iget v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgSize:I

    sget v4, Lcom/android/mms/ui/MessageTextEditor;->KDDI_PACKETSMS_PAYLOAD_MAX:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/ui/MessageTextEditor;->kddiUpdateTextCounter(III)V

    goto :goto_0
.end method

.method private kddiUpdateTextCounter(III)V
    .locals 6
    .parameter "segCnt"
    .parameter "msgSize"
    .parameter "maxSize"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 959
    iget-object v4, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    .line 962
    iput p2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgSize:I

    .line 965
    if-le p1, v2, :cond_2

    .line 966
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 967
    .local v1, seg:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    iget-object v4, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 974
    .end local v1           #seg:Ljava/lang/StringBuilder;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 975
    .local v0, count:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v4, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 977
    iget-object v4, p0, Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;

    if-eqz v4, :cond_0

    .line 978
    iget-object v4, p0, Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;

    iget v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsToMmsThreshold:I

    if-le p1, v5, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/mms/ui/StateWatcher;->updateHasHugeText(Z)V

    goto :goto_0

    .line 970
    .end local v0           #count:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .restart local v0       #count:Ljava/lang/StringBuilder;
    :cond_3
    move v2, v3

    .line 978
    goto :goto_2
.end method

.method private setTextWithoutWatcher(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z

    .line 900
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageTextEditor;->setText(Ljava/lang/CharSequence;)V

    .line 901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z

    .line 902
    return-void
.end method

.method private updateMmsSizeIMECounter(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .parameter "b"
    .parameter "inputstring"

    .prologue
    .line 565
    iget v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    if-ltz v0, :cond_0

    .line 566
    const-string v0, "remaincount"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_0
    const-string v0, "textsize"

    const/high16 v1, 0x4110

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 568
    return-void
.end method

.method private updateTextCounter(III)V
    .locals 6
    .parameter "nPduCount"
    .parameter "nMsgSize"
    .parameter "nMaxChar"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 465
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPacketSms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 469
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageTextEditor;->kddiUpdateTextCounter(III)V

    goto :goto_0

    .line 476
    :cond_2
    iput p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    .line 477
    iput p2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgSize:I

    .line 479
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    if-eqz v2, :cond_8

    .line 492
    iget v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 495
    .local v1, seg:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    .end local v1           #seg:Ljava/lang/StringBuilder;
    :goto_1
    const/16 v2, 0x3e8

    if-lt p3, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    .local v0, count:Ljava/lang/StringBuilder;
    :goto_2
    const/16 v2, 0x3e7

    if-le p3, v2, :cond_7

    .line 512
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x78

    if-ne v2, v3, :cond_6

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 525
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 498
    .end local v0           #count:Ljava/lang/StringBuilder;
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 501
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_2

    .line 516
    .restart local v0       #count:Ljava/lang/StringBuilder;
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iget v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mEditorCounterTextSize:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 517
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mEditorCounterTextSize:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    .line 520
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iget v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mEditorCounterTextSize:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 521
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mEditorCounterTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    .line 541
    .end local v0           #count:Ljava/lang/StringBuilder;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isAlwaysShowTextCounter()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 542
    const-string v2, "MessageTextEditor"

    const-string v3, "Keep text counter visible for SKT."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    const-string v3, "MMS"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 548
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSShowSize()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 549
    iget v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageTextEditor;->updateMmsSizeCounter(I)V

    goto/16 :goto_0

    .line 553
    :cond_a
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized clearText()V
    .locals 1

    .prologue
    .line 379
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTextEditor;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mBlockCompletion:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 892
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mBeforeOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mBeforeOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    const/4 v0, 0x1

    .line 743
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppendEmailMsgCount(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .parameter "text"
    .parameter "emailString"
    .parameter "limit"

    .prologue
    const/4 v3, 0x0

    .line 1016
    if-nez p2, :cond_1

    move v0, v3

    .line 1041
    :cond_0
    :goto_0
    return v0

    .line 1024
    :cond_1
    move-object v1, p1

    .line 1025
    .local v1, tText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1029
    .local v0, nAppend:I
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_2

    .line 1030
    const/4 v0, 0x1

    goto :goto_0

    .line 1033
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1034
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1035
    iget v4, p0, Lcom/android/mms/ui/MessageTextEditor;->mNli:I

    invoke-static {v1, v3, v4}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;ZI)[I

    move-result-object v2

    .line 1036
    .local v2, tparams:[I
    aget v4, v2, v3

    if-eq v0, v4, :cond_0

    .line 1038
    iget v4, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsToMmsThreshold:I

    if-lt v0, v4, :cond_2

    goto :goto_0
.end method

.method public getMmsKBSize(I)Ljava/lang/String;
    .locals 6
    .parameter "size"

    .prologue
    .line 603
    const/4 v2, 0x0

    .line 604
    .local v2, ret:Ljava/lang/String;
    if-ltz p1, :cond_0

    .line 605
    div-int/lit16 v3, p1, 0x400

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 606
    .local v1, mSize:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, kb:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 609
    .end local v0           #kb:Ljava/lang/String;
    .end local v1           #mSize:I
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageTextEditor;->MMSLIMIT:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 610
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getMmsLimit()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageTextEditor;->MMSLIMIT:Ljava/lang/String;

    .line 611
    const-string v3, "MessageTextEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mms Limit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->MMSLIMIT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageTextEditor;->MMSLIMIT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    return-object v2

    .line 605
    :cond_2
    div-int/lit16 v1, p1, 0x400

    goto :goto_0
.end method

.method public getMmsLimit()Ljava/lang/String;
    .locals 9

    .prologue
    .line 619
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 620
    .local v4, prefs:Landroid/content/SharedPreferences;
    const/4 v2, 0x3

    .line 621
    .local v2, mIndex:I
    if-eqz v4, :cond_0

    .line 622
    const-string v6, "pref_key_mms_max_size"

    const-string v7, "3"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 623
    .local v3, pref_limit:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 625
    .end local v3           #pref_limit:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMMSLimit()[Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, Str:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 628
    .local v5, sizeLimit:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "kb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 629
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090029

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 637
    .end local v0           #Str:[Ljava/lang/String;
    .end local v2           #mIndex:I
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    .end local v5           #sizeLimit:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 631
    .restart local v0       #Str:[Ljava/lang/String;
    .restart local v2       #mIndex:I
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    .restart local v5       #sizeLimit:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 632
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 635
    .end local v0           #Str:[Ljava/lang/String;
    .end local v2           #mIndex:I
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    .end local v5           #sizeLimit:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 636
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "MessageTextEditor"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getSmsMode()Z
    .locals 1

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    return v0
.end method

.method protected hasEmailAddress()Z
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 879
    :cond_0
    const/4 v0, 0x0

    .line 881
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isEMSmessage()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 873
    const-string v1, "Jerry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMsgCount >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMsgSize >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget v1, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resetCounter()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 419
    iput v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgSize:I

    .line 420
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    .line 423
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 425
    :cond_0
    iput v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    .line 461
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageTextEditor;->getDefaultTextCounterText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iput v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    goto :goto_0

    .line 443
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isAlwaysShowTextCounter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    const-string v1, "MMS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 450
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSShowSize()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    iget v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTextEditor;->updateMmsSizeCounter(I)V

    goto :goto_0

    .line 455
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setBeforeOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mBeforeOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 730
    return-void
.end method

.method public declared-synchronized setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const v0, 0x7f09011b

    .line 748
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 749
    if-eqz p1, :cond_3

    .line 751
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x60

    if-ne v1, v2, :cond_2

    .line 752
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageTextEditor;->mKeyboardOpen:Z

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTextEditor;->setHint(I)V

    .line 768
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageTextEditor;->setFocusable(Z)V

    .line 769
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageTextEditor;->setFocusableInTouchMode(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    monitor-exit p0

    return-void

    .line 752
    :cond_1
    const v0, 0x7f09004b

    goto :goto_0

    .line 755
    :cond_2
    const v0, 0x7f09011b

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTextEditor;->setHint(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 758
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 760
    if-nez p1, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->clearFocus()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setForwardMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mIsForward:Z

    .line 291
    return-void
.end method

.method declared-synchronized setKeyboardOpen(Z)V
    .locals 3
    .parameter "keyboardOpen"

    .prologue
    const v0, 0x7f09011b

    .line 773
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mKeyboardOpen:Z

    .line 774
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x60

    if-ne v1, v2, :cond_2

    .line 777
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageTextEditor;->mKeyboardOpen:Z

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTextEditor;->setHint(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 777
    :cond_1
    const v0, 0x7f09004b

    goto :goto_0

    .line 780
    :cond_2
    const v0, 0x7f09011b

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTextEditor;->setHint(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setSegmentCounter(Landroid/widget/TextView;)V
    .locals 0
    .parameter "counter"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    .line 388
    return-void
.end method

.method public setSmsMode(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    .line 295
    return-void
.end method

.method setStateWatcher(Lcom/android/mms/ui/StateWatcher;)V
    .locals 0
    .parameter "sw"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mWatcher:Lcom/android/mms/ui/StateWatcher;

    .line 411
    return-void
.end method

.method setTextCounter(Landroid/widget/TextView;)V
    .locals 2
    .parameter "counter"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    .line 398
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageTextEditor;->getDefaultTextCounterText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :cond_0
    return-void
.end method

.method switchToMmsMode()V
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    .line 719
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->resetCounter()V

    .line 720
    return-void
.end method

.method switchToSmsMode()V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    .line 713
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    .line 714
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->updateCounter()V

    .line 715
    return-void
.end method

.method public updateCounter()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 644
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPacketSms()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 645
    invoke-direct {p0}, Lcom/android/mms/ui/MessageTextEditor;->kddiUpdateCounter()V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 654
    iget-object v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 668
    .local v5, text:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSSubjectString:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 669
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSSubjectString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 677
    :cond_2
    iget v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mNli:I

    invoke-static {v5, v8, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;ZI)[I

    move-result-object v3

    .line 679
    .local v3, params:[I
    iput-boolean v8, p0, Lcom/android/mms/ui/MessageTextEditor;->bForceEmailMMS:Z

    .line 680
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 681
    iget v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mNli:I

    invoke-static {v5, v8, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;ZI)[I

    move-result-object v3

    .line 682
    iget-object v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;

    iget v7, p0, Lcom/android/mms/ui/MessageTextEditor;->mNli:I

    invoke-static {v5, v6, v7}, Lcom/android/mms/transaction/SmsMessageSender;->getEmailBodyLimit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 684
    .local v2, limit:I
    iget-object v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v2}, Lcom/android/mms/ui/MessageTextEditor;->getAppendEmailMsgCount(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 686
    .local v0, count:I
    if-lez v0, :cond_5

    .line 687
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 688
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 687
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 690
    :cond_3
    iget v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mNli:I

    invoke-static {v5, v8, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;ZI)[I

    move-result-object v3

    .line 702
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #limit:I
    :cond_4
    :goto_2
    aget v6, v3, v8

    iput v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    .line 703
    aget v6, v3, v9

    iput v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgSize:I

    .line 704
    aget v4, v3, v10

    .line 705
    .local v4, remainingInCurrentMessage:I
    aget v6, v3, v9

    aget v7, v3, v10

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mMaxChar:I

    .line 707
    iget v6, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    iget v7, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgSize:I

    aget v8, v3, v9

    aget v9, v3, v10

    add-int/2addr v8, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/mms/ui/MessageTextEditor;->updateTextCounter(III)V

    goto/16 :goto_0

    .line 692
    .end local v4           #remainingInCurrentMessage:I
    .restart local v0       #count:I
    .restart local v2       #limit:I
    :cond_5
    iput-boolean v9, p0, Lcom/android/mms/ui/MessageTextEditor;->bForceEmailMMS:Z

    goto :goto_2
.end method

.method public updateCurrentCount2IME()V
    .locals 3

    .prologue
    .line 1010
    iget v0, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgCount:I

    iget v1, p0, Lcom/android/mms/ui/MessageTextEditor;->mMsgSize:I

    iget v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMaxChar:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageTextEditor;->updateLandscapeCounter(III)V

    .line 1011
    return-void
.end method

.method public updateEmailString(Ljava/lang/String;)V
    .locals 10
    .parameter "emailString"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 787
    iput-object p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;

    .line 789
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0xa8

    if-ne v8, v9, :cond_2

    move v1, v6

    .line 790
    .local v1, isVerizon:Z
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v8, p0, Lcom/android/mms/ui/MessageTextEditor;->mIsForward:Z

    if-nez v8, :cond_1

    .line 791
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v6, :cond_3

    .line 793
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->updateCounter()V

    .line 811
    :cond_1
    :goto_1
    return-void

    .end local v1           #isVerizon:Z
    :cond_2
    move v1, v7

    .line 789
    goto :goto_0

    .line 795
    .restart local v1       #isVerizon:Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 797
    .local v5, text:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;

    iget v9, p0, Lcom/android/mms/ui/MessageTextEditor;->mNli:I

    invoke-static {v5, v8, v9}, Lcom/android/mms/transaction/SmsMessageSender;->getEmailBodyLimit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 799
    .local v2, limit:I
    iget-object v8, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;

    invoke-virtual {p0, v5, v8, v2}, Lcom/android/mms/ui/MessageTextEditor;->getAppendEmailMsgCount(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 801
    .local v3, nCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v3, :cond_4

    .line 802
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSEmailString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 801
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 804
    :cond_4
    iget v8, p0, Lcom/android/mms/ui/MessageTextEditor;->mNli:I

    invoke-static {v5, v7, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;ZI)[I

    move-result-object v4

    .line 806
    .local v4, params:[I
    aget v7, v4, v7

    aget v8, v4, v6

    aget v6, v4, v6

    const/4 v9, 0x2

    aget v9, v4, v9

    add-int/2addr v6, v9

    invoke-virtual {p0, v7, v8, v6}, Lcom/android/mms/ui/MessageTextEditor;->updateLandscapeCounter(III)V

    goto :goto_1
.end method

.method public updateLandscapeCounter(III)V
    .locals 8
    .parameter "nPduCount"
    .parameter "nMsgSize"
    .parameter "nMaxChar"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 827
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 828
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez v1, :cond_0

    .line 869
    :goto_0
    return-void

    .line 831
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 832
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "textsize"

    const/high16 v3, 0x4120

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 834
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mSmsMode:Z

    if-ne v2, v7, :cond_2

    .line 839
    const-string v2, "remaincount"

    const-string v3, "%d/%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_1
    :goto_1
    const-string v2, "inputRemainCount"

    invoke-virtual {v1, p0, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 867
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageTextEditor;->updateTextCounter(III)V

    goto :goto_0

    .line 843
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isAlwaysShowTextCounter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 844
    const-string v2, "remaincount"

    const-string v3, "MMS"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    const-string v3, "MMS"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 849
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSShowSize()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 850
    iget v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageTextEditor;->updateMmsSizeCounter(I)V

    .line 851
    iget v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageTextEditor;->getMmsKBSize(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/MessageTextEditor;->updateMmsSizeIMECounter(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1

    .line 855
    :cond_4
    const-string v2, "remaincount"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 859
    iget-object v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateMmsSizeCounter(I)V
    .locals 13
    .parameter "size"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    .line 574
    invoke-static {}, Lcom/android/mms/MmsApp;->isAlwaysShowTextCounter()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 575
    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    const-string v6, "MMS"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMMSShowSize()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 580
    iput p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    .line 582
    iget v2, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    .line 584
    .local v2, displayMmsSize:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPduHeaderBuffer()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 585
    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 586
    .local v4, prefs:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mContext:Landroid/content/Context;

    const-string v6, "pref_key_mms_max_size"

    const-string v7, "3"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertMaxMmsSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 587
    .local v3, mmsLimit:I
    sget v5, Lcom/android/mms/model/CarrierContentRestriction;->MESSAGE_HEADER_BUFFER:I

    invoke-static {}, Lcom/android/mms/MmsApp;->getKiloSize()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-double v0, v5

    .line 588
    .local v0, buffer:D
    iget v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mMmsSize:I

    int-to-double v5, v5

    int-to-double v7, v3

    int-to-double v9, v3

    sub-double/2addr v9, v0

    div-double/2addr v7, v9

    mul-double/2addr v5, v7

    double-to-int v2, v5

    .line 591
    .end local v0           #buffer:D
    .end local v3           #mmsLimit:I
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageTextEditor;->getMmsKBSize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    if-ltz v2, :cond_3

    .line 593
    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mSegCounter:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 595
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/MessageTextEditor;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateSubjectString(Ljava/lang/String;)V
    .locals 0
    .parameter "subjectString"

    .prologue
    .line 816
    iput-object p1, p0, Lcom/android/mms/ui/MessageTextEditor;->mSMSSubjectString:Ljava/lang/String;

    .line 817
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTextEditor;->updateCounter()V

    .line 818
    return-void
.end method
