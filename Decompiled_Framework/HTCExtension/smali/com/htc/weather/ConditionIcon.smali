.class public Lcom/htc/weather/ConditionIcon;
.super Landroid/widget/AbsoluteLayout;
.source "ConditionIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/weather/ConditionIcon$AnimationView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConditionIcon"

.field private static final localLOGV:Z


# instance fields
.field private USE_JAVA_ANIMATION:Z

.field private bCountFPS:Z

.field private bNeedFPS:Z

.field private isAnimationReady:Z

.field private mConditionId:I

.field private mDrawCount:I

.field private mEnv:Lcom/htc/weather/EnvSetting$Env;

.field private mImageViews:[Landroid/widget/ImageView;

.field private mInAnimationCount:I

.field private mInAnimationEnd:I

.field private mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

.field private mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mInAnimationSets:[Landroid/view/animation/AnimationSet;

.field private mInAnimationStart:I

.field mListMap:Lcom/htc/weather/AnimationList;

.field private mOutAnimationCount:I

.field private mOutAnimationEnd:I

.field private mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

.field private mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mOutAnimationSets:[Landroid/view/animation/AnimationSet;

.field private mOutAnimationStart:I

.field private mRestAnimationSets:[Landroid/view/animation/AnimationSet;

.field private mStartTime:J

.field private mWeatherAnimationData:Lcom/htc/weather/animations/WeatherAnimationData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/AnimationList;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->USE_JAVA_ANIMATION:Z

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    iput v2, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    new-instance v0, Lcom/htc/weather/ConditionIcon$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$1;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/htc/weather/ConditionIcon$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$2;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p2, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->checkNeedFPS()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/AnimationList;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->USE_JAVA_ANIMATION:Z

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    iput v2, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    new-instance v0, Lcom/htc/weather/ConditionIcon$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$1;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/htc/weather/ConditionIcon$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$2;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p2, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->checkNeedFPS()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/AnimationList;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p3, p4}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->USE_JAVA_ANIMATION:Z

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    iput v2, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    new-instance v0, Lcom/htc/weather/ConditionIcon$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$1;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/htc/weather/ConditionIcon$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$2;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p2, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->checkNeedFPS()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/weather/ConditionIcon;)I
    .locals 1

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    return v0
.end method

.method static synthetic access$008(Lcom/htc/weather/ConditionIcon;)I
    .locals 2

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/weather/ConditionIcon;)I
    .locals 1

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/weather/ConditionIcon;)I
    .locals 1

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    return v0
.end method

.method static synthetic access$1108(Lcom/htc/weather/ConditionIcon;)I
    .locals 2

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/weather/ConditionIcon;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/weather/ConditionIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->endCountFPS()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/weather/ConditionIcon;)I
    .locals 1

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    return v0
.end method

.method static synthetic access$508(Lcom/htc/weather/ConditionIcon;)I
    .locals 2

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/weather/ConditionIcon;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/weather/ConditionIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->startCountFPS()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/weather/ConditionIcon;)I
    .locals 1

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    return v0
.end method

.method static synthetic access$808(Lcom/htc/weather/ConditionIcon;)I
    .locals 2

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/weather/ConditionIcon;)I
    .locals 1

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    return v0
.end method

.method private checkNeedFPS()V
    .locals 3

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/conditionicon.cfg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    goto :goto_0
.end method

.method private clearAnimationGroupListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->endCountFPS()V

    const-string v0, "ConditionIcon"

    const-string v1, "...end count FPS - clearAnimation..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearInAnimationListener()V

    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearOutAnimationListener()V

    return-void
.end method

.method private clearInAnimationListener()V
    .locals 3

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearOutAnimationListener()V
    .locals 3

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endCountFPS()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    iget-boolean v5, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    sub-long v0, v3, v5

    cmp-long v5, v0, v10

    if-lez v5, :cond_0

    const/high16 v5, 0x447a

    iget v6, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    long-to-float v6, v0

    div-float v2, v5, v6

    :cond_0
    const-string v5, "ConditionIcon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ==> FPS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v10, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    iput-boolean v9, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    iput v9, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    :cond_1
    return-void
.end method

.method private playResetAnimation()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mRestAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setAnimationGroupListener()V
    .locals 3

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private startCountFPS()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    return-void
.end method


# virtual methods
.method public destroyConditionIcon()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearAnimationGroupListener()V

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->clearAnimation()V

    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->removeAllViews()V

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mRestAnimationSets:[Landroid/view/animation/AnimationSet;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    :cond_0
    return-void
.end method

.method public isAnimationReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    return v0
.end method

.method public pauseAnimation(ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->pauseOutAnimation()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->pauseInAnimation()V

    :cond_1
    return-void
.end method

.method public pauseInAnimation()V
    .locals 4

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public pauseOutAnimation()V
    .locals 4

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playInAnimation()V
    .locals 4

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    iput v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    iget v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playOutAnimation()V
    .locals 4

    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    iput v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    iget v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public resumeAnimation(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->resumeInAnimation()V

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->resumeOutAnimation()V

    goto :goto_0
.end method

.method public resumeInAnimation()V
    .locals 7

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v0, v4

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    iget v5, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    invoke-virtual {v4, v5}, Lcom/htc/weather/AnimationList;->getWeatherAnimationData(I)Lcom/htc/weather/animations/WeatherAnimationData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/htc/weather/animations/WeatherAnimationData;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v4, v2

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    iget v5, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_2
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearInAnimationListener()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v5, v2, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getInAnimationSet(Z)Landroid/view/animation/AnimationSet;

    move-result-object v5

    aput-object v5, v4, v1

    :cond_3
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resumeOutAnimation()V
    .locals 7

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v0, v4

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    iget v5, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    invoke-virtual {v4, v5}, Lcom/htc/weather/AnimationList;->getWeatherAnimationData(I)Lcom/htc/weather/animations/WeatherAnimationData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/htc/weather/animations/WeatherAnimationData;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v4, v2

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    iget v5, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_2
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearOutAnimationListener()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v5, v2, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getOutAnimationSet(Z)Landroid/view/animation/AnimationSet;

    move-result-object v5

    aput-object v5, v4, v1

    :cond_3
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setConditionId(I)V
    .locals 2

    iput p1, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    invoke-virtual {v1, p1}, Lcom/htc/weather/AnimationList;->getWeatherAnimationData(I)Lcom/htc/weather/animations/WeatherAnimationData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon;->setWeatherAnimationData(Lcom/htc/weather/animations/WeatherAnimationData;)V

    :cond_0
    return-void
.end method

.method public setEnv(Lcom/htc/weather/EnvSetting$Env;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    return-void
.end method

.method public setInAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setOutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setWeatherAnimationData(Lcom/htc/weather/animations/WeatherAnimationData;)V
    .locals 6

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearAnimationGroupListener()V

    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->clearAnimation()V

    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->removeAllViews()V

    if-nez p1, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/htc/weather/animations/WeatherAnimationData;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v1

    array-length v3, v1

    new-array v3, v3, [Landroid/view/animation/AnimationSet;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v3, v1

    new-array v3, v3, [Landroid/view/animation/AnimationSet;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v3, v1

    new-array v3, v3, [Landroid/view/animation/AnimationSet;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mRestAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v3, v1

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getInAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getOutAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mRestAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getRestAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/htc/weather/ConditionIcon;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->setAnimationGroupListener()V

    goto :goto_1
.end method
