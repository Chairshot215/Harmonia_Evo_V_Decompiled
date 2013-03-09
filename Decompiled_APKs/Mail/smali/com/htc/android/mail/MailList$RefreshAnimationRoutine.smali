.class Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;
.super Ljava/util/TimerTask;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshAnimationRoutine"
.end annotation


# instance fields
.field private bRunning:Z

.field private btnFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mCurFrame:I

.field private mFrameNum:I

.field private refresh_icon:Landroid/widget/ImageView;

.field private refresh_iconEx:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 1121
    iput-object p1, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1115
    iput-object v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->btnFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1117
    iput-object v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->refresh_icon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->refresh_iconEx:Landroid/widget/ImageView;

    .line 1118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->bRunning:Z

    .line 1119
    iput v1, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->mFrameNum:I

    iput v1, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->mCurFrame:I

    .line 1122
    #getter for: Lcom/htc/android/mail/MailList;->subTitle:Landroid/view/View;
    invoke-static {p1}, Lcom/htc/android/mail/MailList;->access$2000(Lcom/htc/android/mail/MailList;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->refresh_icon:Landroid/widget/ImageView;

    .line 1126
    iget-object v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->refresh_icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->btnFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 1128
    iget-object v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->btnFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->mFrameNum:I

    .line 1131
    return-void
.end method

.method static synthetic access$2100(Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1114
    iget v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->mCurFrame:I

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1114
    iput p1, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->mCurFrame:I

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->btnFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->refresh_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1114
    iget v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->mFrameNum:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1154
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->bRunning:Z

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->this$0:Lcom/htc/android/mail/MailList;

    new-instance v1, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine$1;-><init>(Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1167
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->bRunning:Z

    if-eqz v0, :cond_0

    .line 1150
    :goto_0
    return-void

    .line 1145
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->bRunning:Z

    .line 1147
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->mCurFrame:I

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1134
    iput-boolean v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->bRunning:Z

    .line 1136
    iput v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->mCurFrame:I

    .line 1137
    iget-object v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->refresh_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->btnFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget v2, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->mCurFrame:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1140
    return-void
.end method
