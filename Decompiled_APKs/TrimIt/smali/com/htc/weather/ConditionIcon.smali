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
    .parameter "context"
    .parameter "list"

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->USE_JAVA_ANIMATION:Z

    .line 31
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    .line 32
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    .line 33
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    .line 35
    iput v2, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 78
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    .line 586
    new-instance v0, Lcom/htc/weather/ConditionIcon$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$1;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 624
    new-instance v0, Lcom/htc/weather/ConditionIcon$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$2;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 57
    iput-object p2, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    .line 58
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->checkNeedFPS()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/AnimationList;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "list"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->USE_JAVA_ANIMATION:Z

    .line 31
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    .line 32
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    .line 33
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    .line 35
    iput v2, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 78
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    .line 586
    new-instance v0, Lcom/htc/weather/ConditionIcon$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$1;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 624
    new-instance v0, Lcom/htc/weather/ConditionIcon$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$2;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 65
    iput-object p2, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    .line 66
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->checkNeedFPS()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/AnimationList;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "list"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->USE_JAVA_ANIMATION:Z

    .line 31
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    .line 32
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    .line 33
    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    .line 35
    iput v2, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 78
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    .line 586
    new-instance v0, Lcom/htc/weather/ConditionIcon$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$1;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 624
    new-instance v0, Lcom/htc/weather/ConditionIcon$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/ConditionIcon$2;-><init>(Lcom/htc/weather/ConditionIcon;)V

    iput-object v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 73
    iput-object p2, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    .line 74
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->checkNeedFPS()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/htc/weather/ConditionIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    return v0
.end method

.method static synthetic access$008(Lcom/htc/weather/ConditionIcon;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/weather/ConditionIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/weather/ConditionIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    return v0
.end method

.method static synthetic access$1108(Lcom/htc/weather/ConditionIcon;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/weather/ConditionIcon;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/weather/ConditionIcon;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->endCountFPS()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/weather/ConditionIcon;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/weather/ConditionIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    return v0
.end method

.method static synthetic access$508(Lcom/htc/weather/ConditionIcon;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/weather/ConditionIcon;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/weather/ConditionIcon;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->startCountFPS()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/weather/ConditionIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    return v0
.end method

.method static synthetic access$808(Lcom/htc/weather/ConditionIcon;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/weather/ConditionIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    return v0
.end method

.method private checkNeedFPS()V
    .locals 3

    .prologue
    .line 698
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/conditionicon.cfg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 700
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    const/4 v1, 0x0

    .line 705
    :goto_0
    return-void

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    goto :goto_0
.end method

.method private clearAnimationGroupListener()V
    .locals 2

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bNeedFPS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    if-eqz v0, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->endCountFPS()V

    .line 555
    const-string v0, "ConditionIcon"

    const-string v1, "...end count FPS - clearAnimation..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearInAnimationListener()V

    .line 558
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearOutAnimationListener()V

    .line 559
    return-void
.end method

.method private clearInAnimationListener()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 526
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    .line 527
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    .line 528
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    .line 529
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_1

    .line 530
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 530
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private clearOutAnimationListener()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 539
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    .line 540
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    .line 541
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    .line 543
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_1

    .line 544
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 544
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private endCountFPS()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 683
    iget-boolean v5, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    if-eqz v5, :cond_1

    .line 684
    const/4 v2, 0x0

    .line 685
    .local v2, fps:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 686
    .local v3, now:J
    iget-wide v5, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    sub-long v0, v3, v5

    .line 687
    .local v0, dur:J
    cmp-long v5, v0, v10

    if-lez v5, :cond_0

    .line 688
    const/high16 v5, 0x447a

    iget v6, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    long-to-float v6, v0

    div-float v2, v5, v6

    .line 690
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

    .line 691
    iput-wide v10, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    .line 692
    iput-boolean v9, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    .line 693
    iput v9, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    .line 695
    .end local v0           #dur:J
    .end local v2           #fps:F
    .end local v3           #now:J
    :cond_1
    return-void
.end method

.method private playResetAnimation()V
    .locals 3

    .prologue
    .line 283
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mRestAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    return-void
.end method

.method private setAnimationGroupListener()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 562
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    .line 563
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    .line 564
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    .line 565
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    .line 566
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    .line 567
    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    .line 568
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_1

    .line 569
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 570
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 572
    iget v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    .line 569
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_3

    .line 577
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 578
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 579
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 580
    iget v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    .line 577
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 584
    .end local v0           #i:I
    :cond_3
    return-void
.end method

.method private startCountFPS()V
    .locals 2

    .prologue
    .line 677
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    .line 679
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/weather/ConditionIcon;->mStartTime:J

    .line 680
    return-void
.end method


# virtual methods
.method public destroyConditionIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 492
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    .line 493
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearAnimationGroupListener()V

    .line 494
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 495
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    .line 496
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 497
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 499
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->getChildCount()I

    move-result v1

    .line 500
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 502
    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->clearAnimation()V

    .line 506
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->removeAllViews()V

    .line 508
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    .line 509
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    .line 510
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mRestAnimationSets:[Landroid/view/animation/AnimationSet;

    .line 511
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    .line 513
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 514
    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    .line 515
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 669
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 671
    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->bCountFPS:Z

    if-eqz v0, :cond_0

    .line 672
    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/weather/ConditionIcon;->mDrawCount:I

    .line 674
    :cond_0
    return-void
.end method

.method public isAnimationReady()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/htc/weather/ConditionIcon;->isAnimationReady:Z

    return v0
.end method

.method public pauseAnimation(ZZ)V
    .locals 0
    .parameter "pauseIn"
    .parameter "pauseOut"

    .prologue
    .line 304
    if-eqz p2, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->pauseOutAnimation()V

    .line 306
    :cond_0
    if-eqz p1, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->pauseInAnimation()V

    .line 308
    :cond_1
    return-void
.end method

.method public pauseInAnimation()V
    .locals 4

    .prologue
    .line 311
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 322
    :cond_0
    return-void

    .line 314
    :cond_1
    iget v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v2

    .line 316
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 317
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 318
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    .line 316
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public pauseOutAnimation()V
    .locals 4

    .prologue
    .line 325
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 336
    :cond_0
    return-void

    .line 328
    :cond_1
    iget v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v1, v2

    .line 330
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 331
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 332
    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    .line 330
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playInAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    iput v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    .line 200
    iput v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationStart:I

    .line 203
    iget v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 229
    :cond_1
    return-void

    .line 208
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 210
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playOutAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    iput v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    .line 236
    iput v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationStart:I

    .line 240
    iget v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 275
    :cond_1
    return-void

    .line 245
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 248
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public resumeAnimation(ZZ)V
    .locals 1
    .parameter "resumeIn"
    .parameter "resumeOut"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    if-gez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    if-eqz p1, :cond_2

    .line 345
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->resumeInAnimation()V

    .line 346
    :cond_2
    if-eqz p2, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->resumeOutAnimation()V

    goto :goto_0
.end method

.method public resumeInAnimation()V
    .locals 7

    .prologue
    .line 351
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    if-nez v4, :cond_1

    .line 385
    :cond_0
    return-void

    .line 354
    :cond_1
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v0, v4

    .line 355
    .local v0, animCount:I
    if-eqz v0, :cond_0

    .line 358
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    iget v5, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    invoke-virtual {v4, v5}, Lcom/htc/weather/AnimationList;->getWeatherAnimationData(I)Lcom/htc/weather/animations/WeatherAnimationData;

    move-result-object v3

    .line 359
    .local v3, weatherAnimationData:Lcom/htc/weather/animations/WeatherAnimationData;
    if-eqz v3, :cond_0

    .line 361
    invoke-virtual {v3}, Lcom/htc/weather/animations/WeatherAnimationData;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v2

    .line 362
    .local v2, imagesAndAnimationSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-eqz v4, :cond_0

    .line 366
    iget v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationEnd:I

    iget v5, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    if-ge v4, v5, :cond_2

    .line 368
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v4, :cond_2

    .line 369
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 373
    :cond_2
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearInAnimationListener()V

    .line 376
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 377
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    if-eqz v4, :cond_3

    .line 378
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v5, v2, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getInAnimationSet(Z)Landroid/view/animation/AnimationSet;

    move-result-object v5

    aput-object v5, v4, v1

    .line 380
    :cond_3
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    .line 381
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 382
    iget v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationCount:I

    .line 376
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resumeOutAnimation()V
    .locals 7

    .prologue
    .line 388
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    if-nez v4, :cond_1

    .line 422
    :cond_0
    return-void

    .line 391
    :cond_1
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    array-length v0, v4

    .line 392
    .local v0, animCount:I
    if-eqz v0, :cond_0

    .line 395
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    iget v5, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    invoke-virtual {v4, v5}, Lcom/htc/weather/AnimationList;->getWeatherAnimationData(I)Lcom/htc/weather/animations/WeatherAnimationData;

    move-result-object v3

    .line 396
    .local v3, weatherAnimationData:Lcom/htc/weather/animations/WeatherAnimationData;
    if-eqz v3, :cond_0

    .line 398
    invoke-virtual {v3}, Lcom/htc/weather/animations/WeatherAnimationData;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v2

    .line 399
    .local v2, imagesAndAnimationSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-eqz v4, :cond_0

    .line 403
    iget v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationEnd:I

    iget v5, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    if-ge v4, v5, :cond_2

    .line 405
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v4, :cond_2

    .line 406
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 410
    :cond_2
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearOutAnimationListener()V

    .line 413
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 414
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    if-eqz v4, :cond_3

    .line 415
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v5, v2, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getOutAnimationSet(Z)Landroid/view/animation/AnimationSet;

    move-result-object v5

    aput-object v5, v4, v1

    .line 417
    :cond_3
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    .line 418
    iget-object v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationGroupListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 419
    iget v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationCount:I

    .line 413
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setConditionId(I)V
    .locals 2
    .parameter "conditionId"

    .prologue
    .line 84
    iput p1, p0, Lcom/htc/weather/ConditionIcon;->mConditionId:I

    .line 86
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/htc/weather/ConditionIcon;->mListMap:Lcom/htc/weather/AnimationList;

    invoke-virtual {v1, p1}, Lcom/htc/weather/AnimationList;->getWeatherAnimationData(I)Lcom/htc/weather/animations/WeatherAnimationData;

    move-result-object v0

    .line 89
    .local v0, weatherAnimationData:Lcom/htc/weather/animations/WeatherAnimationData;
    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon;->setWeatherAnimationData(Lcom/htc/weather/animations/WeatherAnimationData;)V

    .line 91
    .end local v0           #weatherAnimationData:Lcom/htc/weather/animations/WeatherAnimationData;
    :cond_0
    return-void
.end method

.method public setEnv(Lcom/htc/weather/EnvSetting$Env;)V
    .locals 0
    .parameter "env"

    .prologue
    .line 482
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 483
    return-void
.end method

.method public setInAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 519
    return-void
.end method

.method public setOutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 522
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 523
    return-void
.end method

.method public setWeatherAnimationData(Lcom/htc/weather/animations/WeatherAnimationData;)V
    .locals 6
    .parameter "weatherAnimationData"

    .prologue
    const/4 v5, 0x4

    .line 151
    invoke-virtual {p0, v5}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    .line 153
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->clearAnimationGroupListener()V

    .line 155
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->getChildCount()I

    move-result v2

    .line 156
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->clearAnimation()V

    .line 163
    invoke-virtual {p0}, Lcom/htc/weather/ConditionIcon;->removeAllViews()V

    .line 165
    if-nez p1, :cond_1

    .line 188
    :goto_1
    return-void

    .line 168
    :cond_1
    invoke-virtual {p1}, Lcom/htc/weather/animations/WeatherAnimationData;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v1

    .line 170
    .local v1, imagesAndAnimationSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v3, v1

    new-array v3, v3, [Landroid/view/animation/AnimationSet;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    .line 171
    array-length v3, v1

    new-array v3, v3, [Landroid/view/animation/AnimationSet;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    .line 172
    array-length v3, v1

    new-array v3, v3, [Landroid/view/animation/AnimationSet;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mRestAnimationSets:[Landroid/view/animation/AnimationSet;

    .line 173
    array-length v3, v1

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    .line 175
    const/4 v0, 0x0

    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 176
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mInAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getInAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 177
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mOutAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getOutAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 178
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mRestAnimationSets:[Landroid/view/animation/AnimationSet;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getRestAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 179
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/htc/weather/animations/ImageViewAndAnimationSets;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    aput-object v4, v3, v0

    .line 180
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v3, v4, :cond_2

    .line 182
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 184
    :cond_2
    iget-object v3, p0, Lcom/htc/weather/ConditionIcon;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/htc/weather/ConditionIcon;->addView(Landroid/view/View;)V

    .line 185
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 187
    :cond_3
    invoke-direct {p0}, Lcom/htc/weather/ConditionIcon;->setAnimationGroupListener()V

    goto :goto_1
.end method
