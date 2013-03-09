.class public final Lcom/google/appinventor/components/runtime/util/AnimationUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ApplyAnimation(Landroid/view/View;Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x1f40

    const/16 v4, 0xfa0

    const/16 v3, 0x3e8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "ScrollRightSlow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v1, v5}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ScrollRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v1, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    :cond_2
    const-string v0, "ScrollRightFast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, v1, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    :cond_3
    const-string v0, "ScrollLeftSlow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, v2, v5}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    :cond_4
    const-string v0, "ScrollLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, v2, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    :cond_5
    const-string v0, "ScrollLeftFast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v2, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0
.end method

.method private static ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V
    .locals 11

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f80

    move v3, v0

    :goto_0
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v2, 0x3f333333

    mul-float/2addr v2, v3

    const v4, -0x40cccccd

    mul-float/2addr v4, v3

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v10}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    const/high16 v0, -0x4080

    move v3, v0

    goto :goto_0
.end method
