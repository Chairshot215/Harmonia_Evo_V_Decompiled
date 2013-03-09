.class public Lcom/htc/android/htcime/deprecated/voice/RecognitionView;
.super Ljava/lang/Object;
.source "RecognitionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognitionView"


# instance fields
.field private mButton:Landroid/view/View;

.field private mButtonText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mError:Landroid/graphics/drawable/Drawable;

.field private mImage:Landroid/widget/ImageView;

.field private mInitializing:Landroid/graphics/drawable/Drawable;

.field private mLevel:I

.field private mProgress:Landroid/view/View;

.field private mSpeakNow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

.field private mText:Landroid/widget/TextView;

.field private mUiHandler:Landroid/os/Handler;

.field private mUpdateVolumeRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 4
    .parameter "context"
    .parameter "clickListener"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mVolume:F

    .line 61
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mLevel:I

    .line 64
    sget-object v2, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;->READY:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

    iput-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mState:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

    .line 67
    new-instance v2, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$1;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$1;-><init>(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)V

    iput-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    .line 91
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03004c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 98
    .local v1, r:Landroid/content/res/Resources;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    .line 99
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v3, 0x7f0200fa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v3, 0x7f0200fb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v3, 0x7f0200fc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v3, 0x7f0200fd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v3, 0x7f0200fe

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v3, 0x7f0200ff

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v3, 0x7f020100

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const v2, 0x7f0200a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    .line 110
    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    .line 113
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f0e0034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    .line 114
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f0e004f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mButton:Landroid/view/View;

    .line 115
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mButton:Landroid/view/View;

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f0e0031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;

    .line 117
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f0e0050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mButtonText:Landroid/widget/TextView;

    .line 118
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f0e004e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mProgress:Landroid/view/View;

    .line 120
    iput-object p1, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mState:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->exitWorking()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mVolume:F

    return v0
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mLevel:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mLevel:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private exitWorking()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;->READY:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mState:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

    .line 184
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$6;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$6;-><init>(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setTextMarginLayout(II)V
    .locals 2
    .parameter "nPadding"
    .parameter "gravity"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 197
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 198
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 199
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 155
    sget-object v0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;->READY:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mState:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

    .line 156
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$4;

    invoke-direct {v1, p0, p1}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$4;-><init>(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method public showInitializing()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$2;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$2;-><init>(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    invoke-virtual {p0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->showListening()V

    .line 136
    return-void
.end method

.method public showListening()V
    .locals 4

    .prologue
    .line 139
    sget-object v0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;->LISTENING:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mState:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

    .line 140
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$3;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$3;-><init>(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void
.end method

.method public showWorking(Ljava/io/ByteArrayOutputStream;II)V
    .locals 2
    .parameter "waveBuffer"
    .parameter "speechStartPosition"
    .parameter "speechEndPosition"

    .prologue
    .line 171
    sget-object v0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;->WORKING:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mState:Lcom/htc/android/htcime/deprecated/voice/RecognitionView$State;

    .line 173
    iget-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$5;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/deprecated/voice/RecognitionView$5;-><init>(Lcom/htc/android/htcime/deprecated/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method

.method public updateVoiceMeter(F)V
    .locals 0
    .parameter "rmsdB"

    .prologue
    .line 151
    iput p1, p0, Lcom/htc/android/htcime/deprecated/voice/RecognitionView;->mVolume:F

    .line 152
    return-void
.end method
