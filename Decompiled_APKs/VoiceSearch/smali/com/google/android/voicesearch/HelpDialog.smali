.class public Lcom/google/android/voicesearch/HelpDialog;
.super Landroid/app/Dialog;
.source "HelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;,
        Lcom/google/android/voicesearch/HelpDialog$HintAdapter;,
        Lcom/google/android/voicesearch/HelpDialog$Listener;
    }
.end annotation


# static fields
.field private static final BOLD_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mActionDescription:Landroid/widget/TextSwitcher;

.field private mActionGallery:Landroid/widget/Gallery;

.field private mActionGalleryContainer:Landroid/view/ViewGroup;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

.field private mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/widget/TextView;

.field private mInLeft:Landroid/view/animation/Animation;

.field private mInRight:Landroid/view/animation/Animation;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastSelection:I

.field private mLeftArrow:Landroid/widget/ImageButton;

.field private mListener:Lcom/google/android/voicesearch/HelpDialog$Listener;

.field private mLoadingSpinner:Landroid/view/View;

.field private mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mOptionalContent:Landroid/widget/LinearLayout;

.field private mOutLeft:Landroid/view/animation/Animation;

.field private mOutRight:Landroid/view/animation/Animation;

.field private mRightArrow:Landroid/widget/ImageButton;

.field private volatile mScrollActive:Z

.field private mScrollToNextAction:Ljava/lang/Runnable;

.field private mSpeakAgainButton:Landroid/widget/Button;

.field private mVideoLink:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "<b>(.*)</b>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/HelpDialog;->BOLD_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 148
    const v1, 0x7f0c0001

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mLastSelection:I

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollActive:Z

    .line 133
    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$1;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollToNextAction:Ljava/lang/Runnable;

    .line 149
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 150
    .local v0, container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 151
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mHandler:Landroid/os/Handler;

    .line 152
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog;->mContext:Landroid/content/Context;

    .line 153
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getDeviceCapabilityManager()Lcom/google/android/voicesearch/DeviceCapabilityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    .line 154
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/HelpDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollActive:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/voicesearch/HelpDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollActive:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Gallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mOutLeft:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mInLeft:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mOutRight:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLeftArrow:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mRightArrow:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mVideoLink:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/Hints$HintData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/voicesearch/HelpDialog;->getTitleAction()Lcom/google/android/voicesearch/Hints$HintData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/Hints$HintData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/voicesearch/HelpDialog;->getSearchAction()Lcom/google/android/voicesearch/Hints$HintData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/voicesearch/HelpDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/HelpDialog;->formatDisplayText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/HelpDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollToNextAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/voicesearch/HelpDialog;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/HelpDialog;->formatActionText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/voicesearch/HelpDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/voicesearch/HelpDialog;->hideSpinner()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/HelpDialog$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mListener:Lcom/google/android/voicesearch/HelpDialog$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/GservicesHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionDescription:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/voicesearch/HelpDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLastSelection:I

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/voicesearch/HelpDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/google/android/voicesearch/HelpDialog;->mLastSelection:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mInRight:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private formatActionText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0a07e4

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 404
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v3, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 411
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v0, v4, v1

    .line 412
    instance-of v6, v0, Landroid/text/Annotation;

    if-eqz v6, :cond_1

    .line 413
    check-cast v0, Landroid/text/Annotation;

    .line 415
    invoke-virtual {v0}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "action"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 417
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 420
    if-eqz p2, :cond_0

    .line 421
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 442
    :goto_1
    return-object v0

    .line 424
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 411
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 432
    :cond_2
    sget-object v0, Lcom/google/android/voicesearch/HelpDialog;->BOLD_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v3}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 434
    if-eqz p2, :cond_3

    .line 435
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 438
    :cond_3
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 442
    :cond_4
    const-string v0, ""

    goto :goto_1
.end method

.method private formatDisplayText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 356
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 366
    const/4 v4, -0x1

    .line 369
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v7, v6, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 370
    array-length v9, v8

    move v5, v6

    move v2, v6

    :goto_0
    if-ge v5, v9, :cond_0

    aget-object v1, v8, v5

    .line 371
    instance-of v0, v1, Landroid/text/Annotation;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 372
    check-cast v0, Landroid/text/Annotation;

    .line 373
    invoke-virtual {v0}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v10, "action"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v10, "true"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 374
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 375
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 376
    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 377
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v7, v0, v10, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 380
    add-int/lit8 v0, v2, 0x1

    if-nez v2, :cond_2

    move v1, v3

    .line 370
    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v4, v1

    move v2, v0

    goto :goto_0

    .line 388
    :cond_0
    if-ne v2, v11, :cond_1

    .line 389
    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v1, v4, 0x1

    const-string v2, "\n"

    invoke-virtual {v7, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 392
    :cond_1
    return-object v7

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v0, v2

    move v1, v4

    goto :goto_1
.end method

.method private getSearchAction()Lcom/google/android/voicesearch/Hints$HintData;
    .locals 5

    .prologue
    .line 493
    new-instance v0, Lcom/google/android/voicesearch/Hints$HintData;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a07fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a071f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/voicesearch/Hints$HintData;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 497
    .local v0, titleHint:Lcom/google/android/voicesearch/Hints$HintData;
    return-object v0
.end method

.method private getTitleAction()Lcom/google/android/voicesearch/Hints$HintData;
    .locals 5

    .prologue
    .line 482
    new-instance v0, Lcom/google/android/voicesearch/Hints$HintData;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a071d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a07e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/voicesearch/Hints$HintData;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 486
    .local v0, titleHint:Lcom/google/android/voicesearch/Hints$HintData;
    return-object v0
.end method

.method private hideSpinner()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLoadingSpinner:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mMainView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 575
    return-void
.end method

.method private scheduleHintsCreationTask()V
    .locals 3

    .prologue
    .line 564
    new-instance v0, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;-><init>(Lcom/google/android/voicesearch/HelpDialog;Lcom/google/android/voicesearch/HelpDialog$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/HelpDialog$HintsCreationTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 565
    return-void
.end method

.method private showSpinner()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLoadingSpinner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mMainView:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 570
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 159
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->setContentView(I)V

    .line 160
    const v0, 0x7f0e001d

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLoadingSpinner:Landroid/view/View;

    .line 161
    const v0, 0x7f0e001e

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mMainView:Landroid/widget/LinearLayout;

    .line 162
    const v0, 0x7f0e0027

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mOptionalContent:Landroid/widget/LinearLayout;

    .line 164
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mSpeakAgainButton:Landroid/widget/Button;

    .line 165
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mSpeakAgainButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$2;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCancelButton:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$3;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$3;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v0, 0x7f0e001f

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLeftArrow:Landroid/widget/ImageButton;

    .line 185
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mLeftArrow:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$4;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$4;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v0, 0x7f0e0021

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mRightArrow:Landroid/widget/ImageButton;

    .line 199
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mRightArrow:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$5;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$5;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mVideoLink:Landroid/widget/Button;

    .line 213
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mVideoLink:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$6;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$6;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v0, 0x7f0e0020

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mHeader:Landroid/widget/TextView;

    .line 259
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 262
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionGalleryContainer:Landroid/view/ViewGroup;

    .line 264
    const v0, 0x7f0e0029

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;

    .line 265
    invoke-direct {p0}, Lcom/google/android/voicesearch/HelpDialog;->scheduleHintsCreationTask()V

    .line 266
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$7;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$7;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 324
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionGallery:Landroid/widget/Gallery;

    new-instance v1, Lcom/google/android/voicesearch/HelpDialog$8;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/HelpDialog$8;-><init>(Lcom/google/android/voicesearch/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 333
    const v0, 0x7f0e0023

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextSwitcher;

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionDescription:Landroid/widget/TextSwitcher;

    .line 335
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mInLeft:Landroid/view/animation/Animation;

    .line 336
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mInRight:Landroid/view/animation/Animation;

    .line 337
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mOutLeft:Landroid/view/animation/Animation;

    .line 338
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mOutRight:Landroid/view/animation/Animation;

    .line 339
    invoke-direct {p0}, Lcom/google/android/voicesearch/HelpDialog;->showSpinner()V

    .line 340
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mActionGalleryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 345
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->updateLayout()V

    .line 346
    return-void
.end method

.method public setHelpDialogListener(Lcom/google/android/voicesearch/HelpDialog$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog;->mListener:Lcom/google/android/voicesearch/HelpDialog$Listener;

    .line 350
    return-void
.end method

.method public stopAutoScroll()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollToNextAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/HelpDialog;->mScrollActive:Z

    .line 398
    return-void
.end method

.method public updateLayout()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 446
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/voicesearch/ui/WindowUtils;->setWindowSizeAndPosition(Landroid/view/Window;)V

    .line 447
    iget-object v5, p0, Lcom/google/android/voicesearch/HelpDialog;->mMainView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    .line 449
    iget-object v5, p0, Lcom/google/android/voicesearch/HelpDialog;->mOptionalContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 451
    .local v2, parameters:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 452
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 453
    .local v0, config:Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v1, :cond_2

    .line 455
    .local v1, inPortrait:Z
    :goto_0
    iget-object v5, p0, Lcom/google/android/voicesearch/HelpDialog;->mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->hasLargeScreen()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/google/android/voicesearch/HelpDialog;->mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->hasSmallScreen()Z

    move-result v5

    if-nez v5, :cond_3

    .line 456
    :cond_0
    iget-object v5, p0, Lcom/google/android/voicesearch/HelpDialog;->mOptionalContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 457
    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 464
    :goto_1
    iget-object v4, p0, Lcom/google/android/voicesearch/HelpDialog;->mOptionalContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #inPortrait:Z
    .end local v2           #parameters:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_1
    return-void

    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v2       #parameters:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3       #resources:Landroid/content/res/Resources;
    :cond_2
    move v1, v4

    .line 453
    goto :goto_0

    .line 461
    .restart local v1       #inPortrait:Z
    :cond_3
    iget-object v5, p0, Lcom/google/android/voicesearch/HelpDialog;->mOptionalContent:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 462
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1
.end method
