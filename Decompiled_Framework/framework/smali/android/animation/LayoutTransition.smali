.class public Landroid/animation/LayoutTransition;
.super Ljava/lang/Object;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/LayoutTransition$TransitionListener;
    }
.end annotation


# static fields
.field public static final APPEARING:I = 0x2

.field public static final CHANGE_APPEARING:I = 0x0

.field public static final CHANGE_DISAPPEARING:I = 0x1

.field private static DEFAULT_DURATION:J = 0x0L

.field public static final DISAPPEARING:I = 0x3

.field private static defaultChangeIn:Landroid/animation/ObjectAnimator;

.field private static defaultChangeOut:Landroid/animation/ObjectAnimator;

.field private static defaultFadeIn:Landroid/animation/ObjectAnimator;

.field private static defaultFadeOut:Landroid/animation/ObjectAnimator;


# instance fields
.field private final currentAppearingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final currentChangingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final currentDisappearingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutChangeListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateParentHierarchy:Z

.field private mAppearingAnim:Landroid/animation/Animator;

.field private mAppearingDelay:J

.field private mAppearingDuration:J

.field private mAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingAppearingAnim:Landroid/animation/Animator;

.field private mChangingAppearingDelay:J

.field private mChangingAppearingDuration:J

.field private mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingAppearingStagger:J

.field private mChangingDisappearingAnim:Landroid/animation/Animator;

.field private mChangingDisappearingDelay:J

.field private mChangingDisappearingDuration:J

.field private mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingDisappearingStagger:J

.field private mDisappearingAnim:Landroid/animation/Animator;

.field private mDisappearingDelay:J

.field private mDisappearingDuration:J

.field private mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private staggerDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x12c

    sput-wide v0, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/4 v13, 0x1

    const-wide/16 v11, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    iput-object v7, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    iput-object v7, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    iput-object v7, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    iput-wide v11, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    iput-wide v11, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    iput-wide v11, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    iput-wide v11, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    iput-boolean v13, p0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    if-nez v6, :cond_0

    const-string/jumbo v6, "left"

    new-array v8, v10, [I

    fill-array-data v8, :array_0

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string/jumbo v6, "top"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const-string/jumbo v6, "right"

    new-array v8, v10, [I

    fill-array-data v8, :array_2

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v6, "bottom"

    new-array v8, v10, [I

    fill-array-data v8, :array_3

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string/jumbo v6, "scrollX"

    new-array v8, v10, [I

    fill-array-data v8, :array_4

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string/jumbo v6, "scrollY"

    new-array v8, v10, [I

    fill-array-data v8, :array_5

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    move-object v6, v7

    check-cast v6, Ljava/lang/Object;

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    aput-object v5, v8, v13

    aput-object v2, v8, v10

    const/4 v9, 0x3

    aput-object v0, v8, v9

    const/4 v9, 0x4

    aput-object v3, v8, v9

    const/4 v9, 0x5

    aput-object v4, v8, v9

    invoke-static {v6, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sput-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    iget-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v6

    sput-object v6, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    iget-wide v8, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v6, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_6

    invoke-static {v7, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sput-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    sget-wide v8, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    iget-wide v8, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v6, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_7

    invoke-static {v7, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sput-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    sget-wide v7, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    iget-wide v7, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    iget-object v7, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    sget-object v6, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    sget-object v6, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    iput-object v6, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Landroid/animation/LayoutTransition;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/animation/LayoutTransition;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    return-wide v0
.end method

.method static synthetic access$314(Landroid/animation/LayoutTransition;J)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/animation/LayoutTransition;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    return-wide v0
.end method

.method static synthetic access$500(Landroid/animation/LayoutTransition;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/animation/LayoutTransition;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$800(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private runAppearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 7

    iget-object v4, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v4, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/LayoutTransition$TransitionListener;

    const/4 v4, 0x2

    invoke-interface {v3, p0, p1, p2, v4}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-wide v4, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-wide v4, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    instance-of v4, v0, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    :cond_2
    iget-object v4, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    new-instance v4, Landroid/animation/LayoutTransition$5;

    invoke-direct {v4, p0, p2, p1}, Landroid/animation/LayoutTransition$5;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object v4, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_4
    return-void
.end method

.method private runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 20

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    :goto_0
    if-nez v5, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/animation/LayoutTransition;->staggerDelay:J

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, p2

    if-eq v8, v0, :cond_3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-direct/range {v2 .. v8}, Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V

    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    sget-object v12, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    :goto_4
    move-object/from16 v15, p1

    :goto_5
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_7

    move-object/from16 v10, v19

    check-cast v10, Landroid/view/ViewGroup;

    move-object/from16 v9, p0

    move/from16 v11, p3

    move-wide v13, v6

    invoke-direct/range {v9 .. v15}, Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V

    move-object/from16 v15, v19

    check-cast v15, Landroid/view/ViewGroup;

    goto :goto_5

    :cond_6
    sget-object v12, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    goto :goto_5

    :cond_8
    new-instance v2, Landroid/animation/LayoutTransition$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Landroid/animation/LayoutTransition$1;-><init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_1
.end method

.method private runDisappearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 7

    iget-object v4, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v4, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/LayoutTransition$TransitionListener;

    const/4 v4, 0x3

    invoke-interface {v3, p0, p1, p2, v4}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    iget-wide v4, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-wide v4, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v4, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    new-instance v4, Landroid/animation/LayoutTransition$6;

    invoke-direct {v4, p0, p2, p1}, Landroid/animation/LayoutTransition$6;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    instance-of v4, v0, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_3

    move-object v4, v0

    check-cast v4, Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    :cond_3
    iget-object v4, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_4
    return-void
.end method

.method private setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
    .locals 12

    iget-object v2, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/animation/Animator;->setupStartValues()V

    iget-object v2, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/animation/Animator;->cancel()V

    iget-object v2, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    add-long v4, v4, p4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v11

    new-instance v2, Landroid/animation/LayoutTransition$2;

    move-object/from16 v0, p6

    invoke-direct {v2, p0, v0}, Landroid/animation/LayoutTransition$2;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;)V

    invoke-virtual {v11, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    new-instance v1, Landroid/animation/LayoutTransition$3;

    move-object v2, p0

    move v4, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Landroid/animation/LayoutTransition$3;-><init>(Landroid/animation/LayoutTransition;Landroid/animation/Animator;IJLandroid/view/View;Landroid/view/ViewGroup;)V

    new-instance v4, Landroid/animation/LayoutTransition$4;

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p6

    move v8, p2

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Landroid/animation/LayoutTransition$4;-><init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v2, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public addChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->cancel(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->cancel(I)V

    iget-object v2, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition$TransitionListener;

    invoke-interface {v1, p0, p1, p2, v3}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v3}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    invoke-direct {p0, p1, p2}, Landroid/animation/LayoutTransition;->runAppearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 4

    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    :cond_1
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    :cond_3
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    :cond_5
    return-void
.end method

.method public cancel(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_3

    :cond_3
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public endChangingAnimations()V
    .locals 4

    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAnimator(I)Landroid/animation/Animator;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDuration(I)J
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :pswitch_0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    goto :goto_0

    :pswitch_1
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    goto :goto_0

    :pswitch_2
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    goto :goto_0

    :pswitch_3
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getInterpolator(I)Landroid/animation/TimeInterpolator;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getStagger(I)J
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :pswitch_0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    goto :goto_0

    :pswitch_1
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getStartDelay(I)J
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :pswitch_0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    goto :goto_0

    :pswitch_1
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    goto :goto_0

    :pswitch_2
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    goto :goto_0

    :pswitch_3
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTransitionListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/LayoutTransition$TransitionListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hideChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public isChangingLayout()Z
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->cancel(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->cancel(I)V

    iget-object v2, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition$TransitionListener;

    invoke-interface {v1, p0, p1, p2, v3}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v3}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    invoke-direct {p0, p1, p2}, Landroid/animation/LayoutTransition;->runDisappearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAnimateParentHierarchy(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    return-void
.end method

.method public setAnimator(ILandroid/animation/Animator;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :pswitch_3
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDuration(IJ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    goto :goto_0

    :pswitch_1
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    goto :goto_0

    :pswitch_2
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    goto :goto_0

    :pswitch_3
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    return-void
.end method

.method public setInterpolator(ILandroid/animation/TimeInterpolator;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :pswitch_3
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setStagger(IJ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    goto :goto_0

    :pswitch_1
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setStartDelay(IJ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    goto :goto_0

    :pswitch_1
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    goto :goto_0

    :pswitch_2
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    goto :goto_0

    :pswitch_3
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public startChangingAnimations()V
    .locals 6

    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    instance-of v3, v0, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    return-void
.end method
