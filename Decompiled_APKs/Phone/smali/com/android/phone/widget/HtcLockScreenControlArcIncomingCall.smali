.class public Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;
.super Landroid/widget/RelativeLayout;
.source "HtcLockScreenControlArcIncomingCall.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static openLog:Z


# instance fields
.field private mArrowL:Landroid/widget/ImageView;

.field private mArrowLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mArrowR:Landroid/widget/ImageView;

.field private mArrowRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mCityIdView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHtcResContext:Landroid/content/Context;

.field private mSkinPackageName:Ljava/lang/String;

.field private textDragDown:Landroid/widget/TextView;

.field private textDragDownShadow:Landroid/widget/TextView;

.field private textViewPressMenu:Landroid/widget/TextView;

.field private textViewPressMenuShadow:Landroid/widget/TextView;

.field private textviewLockScreenInCallName:Landroid/widget/TextView;

.field private textviewLockScreenInCallNameShadow:Landroid/widget/TextView;

.field private textviewLockScreenNumber:Landroid/widget/TextView;

.field private textviewLockScreenNumberShadow:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "HtcLockScreenControlArcIncomingCall"

    sput-object v0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->openLog:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mSkinPackageName:Ljava/lang/String;

    .line 78
    sget-boolean v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->openLog:Z

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    const-string v2, "HtcLockScreenControlArcIncomingCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mContext:Landroid/content/Context;

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mHtcResContext:Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->init()V

    .line 84
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->initLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcLockScreenControlArcIncomingCall initLayout exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mSkinPackageName:Ljava/lang/String;

    .line 92
    sget-boolean v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->openLog:Z

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    const-string v2, "HtcLockScreenControlArcIncomingCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mContext:Landroid/content/Context;

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mHtcResContext:Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->init()V

    .line 98
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->initLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcLockScreenControlArcIncomingCall initLayout exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mSkinPackageName:Ljava/lang/String;

    .line 106
    sget-boolean v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->openLog:Z

    if-eqz v1, :cond_0

    .line 107
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    const-string v2, "HtcLockScreenControlArcIncomingCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mContext:Landroid/content/Context;

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mHtcResContext:Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->init()V

    .line 112
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->initLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcLockScreenControlArcIncomingCall initLayout exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowL:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowR:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->setArrowAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->clearArrowAnimation()V

    return-void
.end method

.method private clearArrowAnimation()V
    .locals 3

    .prologue
    .line 179
    sget-boolean v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->openLog:Z

    if-eqz v1, :cond_0

    .line 180
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    const-string v2, "clearArrowAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowL:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 184
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowR:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowRightAnimation:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    const-string v2, "clear setArrowAnimation fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    const-string v2, "clear setArrowAnimation fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSkinPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/res/HtcResources;->getCurrentThemePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mHandler:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method private initLayout()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 125
    iget-object v3, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mHtcResContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 127
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030030

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 129
    .local v2, relativelayoutMain:Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_1

    .line 130
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->addView(Landroid/view/View;)V

    .line 133
    const v3, 0x2020143

    invoke-virtual {p0, v3}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenInCallName:Landroid/widget/TextView;

    .line 134
    const v3, 0x2020144

    invoke-virtual {p0, v3}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumber:Landroid/widget/TextView;

    .line 135
    const v3, 0x202013d

    invoke-virtual {p0, v3}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowR:Landroid/widget/ImageView;

    .line 136
    const v3, 0x202013c

    invoke-virtual {p0, v3}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowL:Landroid/widget/ImageView;

    .line 137
    const v3, 0x2020141

    invoke-virtual {p0, v3}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenInCallNameShadow:Landroid/widget/TextView;

    .line 138
    const v3, 0x2020142

    invoke-virtual {p0, v3}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumberShadow:Landroid/widget/TextView;

    .line 141
    const v3, 0x2020140

    invoke-virtual {p0, v3}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textViewPressMenu:Landroid/widget/TextView;

    .line 142
    const v3, 0x202013f

    invoke-virtual {p0, v3}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textViewPressMenuShadow:Landroid/widget/TextView;

    .line 143
    const v3, 0x202013b

    invoke-virtual {p0, v3}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textDragDown:Landroid/widget/TextView;

    .line 144
    const v3, 0x202013e

    invoke-virtual {p0, v3}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textDragDownShadow:Landroid/widget/TextView;

    .line 148
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->getSkinPackageName()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mSkinPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mSkinPackageName:Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->onSkinChanged()V

    .line 155
    :cond_0
    const v3, 0x7f0800db

    invoke-virtual {p0, v3}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mCityIdView:Landroid/widget/TextView;

    .line 159
    return-void

    .line 157
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "resource htc_lock_screen_control_arc_incoming_call.xml not found"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private onSkinChanged()V
    .locals 6

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, color:I
    const/4 v1, 0x0

    .line 399
    .local v1, resId:I
    invoke-virtual {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "lockscreen_time_text_color"

    const-string v4, "color"

    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mSkinPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 401
    if-nez v1, :cond_0

    .line 402
    const v1, 0x20a0005

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 408
    iget-object v2, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenInCallName:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->setTextColor(Landroid/widget/TextView;I)V

    .line 409
    iget-object v2, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumber:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->setTextColor(Landroid/widget/TextView;I)V

    .line 412
    invoke-virtual {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "lockscreen_time_text_shading_color"

    const-string v4, "color"

    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mSkinPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 414
    if-nez v1, :cond_1

    .line 415
    const v1, 0x20a0006

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 421
    iget-object v2, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenInCallNameShadow:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->setTextColor(Landroid/widget/TextView;I)V

    .line 422
    iget-object v2, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumberShadow:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->setTextColor(Landroid/widget/TextView;I)V

    .line 423
    return-void
.end method

.method private setArrowAnimation()V
    .locals 3

    .prologue
    .line 162
    sget-boolean v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->openLog:Z

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    const-string v2, "setArrowAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowL:Landroid/widget/ImageView;

    const/high16 v2, 0x204

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 168
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowL:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 169
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowR:Landroid/widget/ImageView;

    const/high16 v2, 0x204

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 170
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowR:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mArrowRightAnimation:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    const-string v2, "setArrowAnimation fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    const-string v2, "setArrowAnimation fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setTextColor(Landroid/widget/TextView;I)V
    .locals 0
    .parameter "v"
    .parameter "color"

    .prologue
    .line 426
    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    :cond_0
    return-void
.end method

.method private static updateVisibility(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 359
    if-eqz p0, :cond_0

    .line 360
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 361
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method public getCityIdView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mCityIdView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameShadowView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenInCallNameShadow:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenInCallName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNumberShadowView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumberShadow:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNumberView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideAndReleaseArrowAnimation()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 264
    sget-boolean v0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->openLog:Z

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    const-string v1, "hideAndReleaseArrowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textViewPressMenu:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textViewPressMenuShadow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textDragDown:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textDragDownShadow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall$2;

    invoke-direct {v1, p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall$2;-><init>(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method public loadAndShowArrowAnimation()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 233
    sget-boolean v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->openLog:Z

    if-eqz v1, :cond_0

    .line 234
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->TAG:Ljava/lang/String;

    const-string v2, "loadAndShowArrowAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textViewPressMenu:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textViewPressMenuShadow:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textDragDown:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textDragDownShadow:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    const/16 v0, 0x3e8

    .line 250
    .local v0, nDelay:I
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall$1;

    invoke-direct {v2, p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall$1;-><init>(Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 379
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->getSkinPackageName()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mSkinPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    iput-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mSkinPackageName:Ljava/lang/String;

    .line 382
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->onSkinChanged()V

    .line 385
    :cond_0
    return-void
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mCityIdView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->mCityIdView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_0
    return-void
.end method

.method public setHintText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "sDragDown"
    .parameter "sPressMenu"

    .prologue
    .line 291
    const v4, 0x202013b

    invoke-virtual {p0, v4}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 292
    .local v0, textviewDragDown:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_0
    const v4, 0x2020140

    invoke-virtual {p0, v4}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 295
    .local v2, textviewPressMenu:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 296
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :cond_1
    const v4, 0x202013e

    invoke-virtual {p0, v4}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 299
    .local v1, textviewDragDownShadow:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_2
    const v4, 0x202013f

    invoke-virtual {p0, v4}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 302
    .local v3, textviewPressMenuShadow:Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 303
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :cond_3
    return-void
.end method

.method public setVisibilityLockScreenInCallNumber(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumberShadow:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumberShadow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    :cond_1
    return-void
.end method

.method public updateLockScreenInCallName(Ljava/lang/String;)V
    .locals 2
    .parameter "sName"

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenInCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenInCallName:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->updateVisibility(Landroid/view/View;I)V

    .line 197
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenInCallName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenInCallNameShadow:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenInCallNameShadow:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->updateVisibility(Landroid/view/View;I)V

    .line 201
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenInCallNameShadow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_1
    return-void
.end method

.method public updateLockScreenInCallNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "sNumber"

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumber:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->updateVisibility(Landroid/view/View;I)V

    .line 208
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumberShadow:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumberShadow:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->updateVisibility(Landroid/view/View;I)V

    .line 213
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControlArcIncomingCall;->textviewLockScreenNumberShadow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_1
    return-void
.end method
