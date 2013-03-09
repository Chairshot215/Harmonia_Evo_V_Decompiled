.class public Lcom/htc/customize/animation/HtcAnimationSet;
.super Landroid/view/animation/AnimationSet;
.source "HtcAnimationSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/customize/animation/HtcAnimationSet$Description;
    }
.end annotation


# static fields
.field static final ANIMATION_STR_PIVOTX:Ljava/lang/String; = "android:pivotX"

.field static final ANIMATION_STR_PIVOTY:Ljava/lang/String; = "android:pivotY"

.field static final ANIMATION_STR_PIVOTZ:Ljava/lang/String; = "android:pivotZ"

.field static final ANIMATION_STR_SHAREINTERPOLATOR:Ljava/lang/String; = "android:shareInterpolator"

.field private static final Animation_duration:I = 0x0

.field private static final Animation_fillAfter:I = 0x1

.field private static final Animation_fillBefore:I = 0x2

.field private static final Animation_interpolator:I = 0x3

.field private static final Animation_repeatCount:I = 0x4

.field private static final Animation_repeatMode:I = 0x5

.field private static final Animation_startOffset:I = 0x6

.field private static final Animation_zAdjustment:I = 0x7

.field static final NAMESPACE_STR:Ljava/lang/String; = "android:"

.field static final TAG:Ljava/lang/String; = "HtcAnimationSet"

.field static base_attr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 767
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:duration"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:fillAfter"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:fillBefore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:interpolator"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android:repeatCount"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android:repeatMode"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android:startOffset"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android:zAdjustment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "shareInterpolator"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 57
    return-void
.end method

.method public static addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "ani"
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 61
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 62
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 65
    .local v2, nval:I
    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 61
    .end local v2           #nval:I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 68
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 69
    .restart local v2       #nval:I
    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto :goto_1

    .line 71
    .end local v2           #nval:I
    :cond_2
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 72
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getFillBefore()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 74
    .local v0, bret:Z
    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    goto :goto_1

    .line 75
    .end local v0           #bret:Z
    :cond_3
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 76
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 78
    .restart local v0       #bret:Z
    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_1

    .line 79
    .end local v0           #bret:Z
    :cond_4
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 88
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 89
    .restart local v2       #nval:I
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    goto/16 :goto_1

    .line 90
    .end local v2           #nval:I
    :cond_5
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 91
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 92
    .restart local v2       #nval:I
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    goto/16 :goto_1

    .line 93
    .end local v2           #nval:I
    :cond_6
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 95
    .restart local v2       #nval:I
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto/16 :goto_1

    .line 98
    .end local v2           #nval:I
    :cond_7
    return-void
.end method

.method public static create3DRotateAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;
    .locals 24
    .parameter "context"
    .parameter "attrs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/TypedValue;",
            ">;)",
            "Landroid/view/animation/Animation;"
        }
    .end annotation

    .prologue
    .line 403
    .local p2, inherit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/util/TypedValue;>;"
    const/4 v4, 0x0

    .line 404
    .local v4, fdx:F
    const/4 v5, 0x0

    .line 405
    .local v5, tdx:F
    const/4 v6, 0x0

    .line 406
    .local v6, fdy:F
    const/4 v7, 0x0

    .line 407
    .local v7, tdy:F
    const/4 v8, 0x0

    .line 408
    .local v8, fdz:F
    const/4 v9, 0x0

    .line 410
    .local v9, tdz:F
    const/4 v10, 0x0

    .line 411
    .local v10, pxtype:I
    const/4 v12, 0x0

    .line 412
    .local v12, pytype:I
    const/4 v14, 0x0

    .line 413
    .local v14, pztype:I
    const/4 v11, 0x0

    .line 414
    .local v11, px:F
    const/4 v13, 0x0

    .line 415
    .local v13, py:F
    const/4 v15, 0x0

    .line 417
    .local v15, pz:F
    const/16 v17, 0x0

    .line 418
    .local v17, hasPivotX:Z
    const/16 v18, 0x0

    .line 419
    .local v18, hasPivotY:Z
    const/16 v19, 0x0

    .line 421
    .local v19, hasPivotZ:Z
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 423
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:fromDegreesX"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_1

    .line 424
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 421
    :cond_0
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 426
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:toDegreesX"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_2

    .line 427
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_1

    .line 429
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:fromDegreesY"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_3

    .line 430
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_1

    .line 432
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:toDegreesY"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_4

    .line 433
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto :goto_1

    .line 435
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:fromDegreesZ"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:fromDegrees"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_6

    .line 437
    :cond_5
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto/16 :goto_1

    .line 439
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:toDegreesZ"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:toDegrees"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_8

    .line 441
    :cond_7
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Float;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto/16 :goto_1

    .line 443
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:pivotX"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_a

    .line 445
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 446
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v21

    .line 447
    .local v21, tv:Landroid/util/TypedValue;
    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v16

    .line 448
    .local v16, d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v16, :cond_9

    .line 449
    move-object/from16 v0, v16

    iget v11, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 450
    move-object/from16 v0, v16

    iget v10, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 453
    :cond_9
    const/16 v17, 0x1

    .line 454
    goto/16 :goto_1

    .line 455
    .end local v16           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v21           #tv:Landroid/util/TypedValue;
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:pivotY"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_c

    .line 457
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v21

    .line 458
    .restart local v21       #tv:Landroid/util/TypedValue;
    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v16

    .line 459
    .restart local v16       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v16, :cond_b

    .line 460
    move-object/from16 v0, v16

    iget v13, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 461
    move-object/from16 v0, v16

    iget v12, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 464
    :cond_b
    const/16 v18, 0x1

    .line 465
    goto/16 :goto_1

    .end local v16           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v21           #tv:Landroid/util/TypedValue;
    :cond_c
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:pivotZ"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_0

    .line 467
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v21

    .line 468
    .restart local v21       #tv:Landroid/util/TypedValue;
    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v16

    .line 469
    .restart local v16       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v16, :cond_d

    .line 470
    move-object/from16 v0, v16

    iget v15, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 471
    move-object/from16 v0, v16

    iget v14, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 474
    :cond_d
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 478
    .end local v16           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v21           #tv:Landroid/util/TypedValue;
    :cond_e
    if-nez v17, :cond_f

    .line 479
    const-string v22, "android:pivotX"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v16

    .line 480
    .restart local v16       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v16, :cond_f

    .line 481
    move-object/from16 v0, v16

    iget v11, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 482
    move-object/from16 v0, v16

    iget v10, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 486
    .end local v16           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    :cond_f
    if-nez v18, :cond_10

    .line 487
    const-string v22, "android:pivotY"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v16

    .line 488
    .restart local v16       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v16, :cond_10

    .line 489
    move-object/from16 v0, v16

    iget v13, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 490
    move-object/from16 v0, v16

    iget v12, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 494
    .end local v16           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    :cond_10
    if-nez v18, :cond_11

    .line 495
    const-string v22, "android:pivotZ"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v16

    .line 496
    .restart local v16       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v16, :cond_11

    .line 497
    move-object/from16 v0, v16

    iget v15, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 498
    move-object/from16 v0, v16

    iget v14, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 502
    .end local v16           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    :cond_11
    new-instance v3, Lcom/htc/customize/animation/my3dRotateAnimation;

    invoke-direct/range {v3 .. v15}, Lcom/htc/customize/animation/my3dRotateAnimation;-><init>(FFFFFFIFIFIF)V

    .line 509
    .local v3, ani:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 510
    return-object v3
.end method

.method public static create3DTranslateAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;
    .locals 29
    .parameter "context"
    .parameter "attrs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/TypedValue;",
            ">;)",
            "Landroid/view/animation/Animation;"
        }
    .end annotation

    .prologue
    .line 177
    .local p2, inherit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/util/TypedValue;>;"
    const/4 v4, 0x0

    .line 178
    .local v4, fx:F
    const/4 v8, 0x0

    .line 179
    .local v8, fy:F
    const/4 v12, 0x0

    .line 180
    .local v12, fz:F
    const/4 v6, 0x0

    .line 181
    .local v6, tx:F
    const/4 v10, 0x0

    .line 182
    .local v10, ty:F
    const/4 v14, 0x0

    .line 183
    .local v14, tz:F
    const/16 v16, 0x0

    .line 184
    .local v16, px:F
    const/16 v18, 0x0

    .line 185
    .local v18, py:F
    const/16 v20, 0x0

    .line 186
    .local v20, pz:F
    const/4 v15, 0x0

    .line 187
    .local v15, pxtype:I
    const/16 v17, 0x0

    .line 188
    .local v17, pytype:I
    const/16 v19, 0x0

    .line 190
    .local v19, pztype:I
    const/4 v3, 0x0

    .line 191
    .local v3, fxtype:I
    const/4 v7, 0x0

    .line 192
    .local v7, fytype:I
    const/4 v11, 0x0

    .line 193
    .local v11, fztype:I
    const/4 v5, 0x0

    .line 194
    .local v5, txtype:I
    const/4 v9, 0x0

    .line 195
    .local v9, tytype:I
    const/4 v13, 0x0

    .line 197
    .local v13, tztype:I
    const/16 v23, 0x0

    .line 198
    .local v23, hasPivotX:Z
    const/16 v24, 0x0

    .line 199
    .local v24, hasPivotY:Z
    const/16 v25, 0x0

    .line 200
    .local v25, hasPivotZ:Z
    const/16 v26, 0x0

    .local v26, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v21

    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 202
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    const-string v28, "android:fromXDelta"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_1

    .line 204
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    .line 205
    .local v27, tv:Landroid/util/TypedValue;
    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    .line 206
    .local v22, d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v22, :cond_0

    .line 207
    move-object/from16 v0, v22

    iget v4, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 208
    move-object/from16 v0, v22

    iget v3, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 200
    .end local v22           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v27           #tv:Landroid/util/TypedValue;
    :cond_0
    :goto_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 211
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    const-string v28, "android:fromYDelta"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_2

    .line 213
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    .line 214
    .restart local v27       #tv:Landroid/util/TypedValue;
    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    .line 215
    .restart local v22       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v22, :cond_0

    .line 216
    move-object/from16 v0, v22

    iget v8, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 217
    move-object/from16 v0, v22

    iget v7, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto :goto_1

    .line 220
    .end local v22           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v27           #tv:Landroid/util/TypedValue;
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    const-string v28, "android:fromZDelta"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_3

    .line 222
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    .line 223
    .restart local v27       #tv:Landroid/util/TypedValue;
    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    .line 224
    .restart local v22       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v22, :cond_0

    .line 225
    move-object/from16 v0, v22

    iget v12, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 226
    move-object/from16 v0, v22

    iget v11, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto :goto_1

    .line 229
    .end local v22           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v27           #tv:Landroid/util/TypedValue;
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    const-string v28, "android:toXDelta"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_4

    .line 231
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    .line 232
    .restart local v27       #tv:Landroid/util/TypedValue;
    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    .line 233
    .restart local v22       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v22, :cond_0

    .line 234
    move-object/from16 v0, v22

    iget v6, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 235
    move-object/from16 v0, v22

    iget v5, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto/16 :goto_1

    .line 238
    .end local v22           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v27           #tv:Landroid/util/TypedValue;
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    const-string v28, "android:toYDelta"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_5

    .line 240
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    .line 241
    .restart local v27       #tv:Landroid/util/TypedValue;
    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    .line 242
    .restart local v22       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v22, :cond_0

    .line 243
    move-object/from16 v0, v22

    iget v10, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 244
    move-object/from16 v0, v22

    iget v9, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto/16 :goto_1

    .line 247
    .end local v22           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v27           #tv:Landroid/util/TypedValue;
    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    const-string v28, "android:toZDelta"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_6

    .line 249
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    .line 250
    .restart local v27       #tv:Landroid/util/TypedValue;
    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    .line 251
    .restart local v22       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v22, :cond_0

    .line 252
    move-object/from16 v0, v22

    iget v14, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 253
    move-object/from16 v0, v22

    iget v13, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto/16 :goto_1

    .line 256
    .end local v22           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v27           #tv:Landroid/util/TypedValue;
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    const-string v28, "android:pivotX"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_9

    .line 258
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_8

    .line 259
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    .line 260
    .restart local v27       #tv:Landroid/util/TypedValue;
    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    .line 261
    .restart local v22       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v22, :cond_7

    .line 262
    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move/from16 v16, v0

    .line 263
    move-object/from16 v0, v22

    iget v15, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 266
    :cond_7
    const/16 v23, 0x1

    .line 268
    .end local v22           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v27           #tv:Landroid/util/TypedValue;
    :cond_8
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 269
    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    const-string v28, "android:pivotY"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_b

    .line 271
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    .line 272
    .restart local v27       #tv:Landroid/util/TypedValue;
    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    .line 273
    .restart local v22       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v22, :cond_a

    .line 274
    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move/from16 v18, v0

    .line 275
    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    move/from16 v17, v0

    .line 278
    :cond_a
    const/16 v24, 0x1

    .line 279
    goto/16 :goto_1

    .end local v22           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v27           #tv:Landroid/util/TypedValue;
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    const-string v28, "android:pivotZ"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_0

    .line 281
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    .line 282
    .restart local v27       #tv:Landroid/util/TypedValue;
    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    .line 283
    .restart local v22       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v22, :cond_c

    .line 284
    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move/from16 v20, v0

    .line 285
    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    move/from16 v19, v0

    .line 288
    :cond_c
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 291
    .end local v22           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v27           #tv:Landroid/util/TypedValue;
    :cond_d
    if-nez v23, :cond_e

    .line 292
    const-string v21, "android:pivotX"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    .line 293
    .restart local v22       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v22, :cond_e

    .line 294
    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move/from16 v16, v0

    .line 295
    move-object/from16 v0, v22

    iget v15, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 299
    .end local v22           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    :cond_e
    if-nez v24, :cond_f

    .line 300
    const-string v21, "android:pivotY"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    .line 301
    .restart local v22       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v22, :cond_f

    .line 302
    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move/from16 v18, v0

    .line 303
    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    move/from16 v17, v0

    .line 307
    .end local v22           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    :cond_f
    if-nez v25, :cond_10

    .line 308
    const-string v21, "android:pivotZ"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    .line 309
    .restart local v22       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v22, :cond_10

    .line 310
    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move/from16 v20, v0

    .line 311
    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    move/from16 v19, v0

    .line 314
    .end local v22           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    :cond_10
    new-instance v2, Lcom/htc/customize/animation/my3dTranslateAnimation;

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/htc/customize/animation/my3dTranslateAnimation;-><init>(IFIFIFIFIFIFIFIFIFZ)V

    .line 320
    .local v2, ani:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 321
    return-object v2
.end method

.method public static createAlphaAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/TypedValue;",
            ">;)",
            "Landroid/view/animation/Animation;"
        }
    .end annotation

    .prologue
    .local p2, inherit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/util/TypedValue;>;"
    const/4 v6, 0x0

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, fa:F
    const/4 v3, 0x0

    .line 105
    .local v3, ta:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 107
    invoke-interface {p1, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android:fromAlpha"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 108
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 105
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {p1, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android:toAlpha"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 110
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    .line 113
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 116
    .local v0, ani:Landroid/view/animation/Animation;
    invoke-static {v0, p0, p1}, Lcom/htc/customize/animation/HtcAnimationSet;->addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-object v0
.end method

.method public static createRotateAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;
    .locals 15
    .parameter "context"
    .parameter "attrs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/TypedValue;",
            ">;)",
            "Landroid/view/animation/Animation;"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, inherit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/util/TypedValue;>;"
    const/4 v2, 0x0

    .line 337
    .local v2, fd:F
    const/4 v3, 0x0

    .line 338
    .local v3, td:F
    const/4 v4, 0x0

    .line 339
    .local v4, pxtype:I
    const/4 v6, 0x0

    .line 340
    .local v6, pytype:I
    const/4 v5, 0x0

    .line 341
    .local v5, px:F
    const/4 v7, 0x0

    .line 342
    .local v7, py:F
    const/4 v9, 0x0

    .line 343
    .local v9, hasPivotX:Z
    const/4 v10, 0x0

    .line 345
    .local v10, hasPivotY:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v13

    if-ge v11, v13, :cond_6

    .line 347
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "android:fromDegrees"

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_1

    .line 348
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v0, v11, v13}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 345
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 349
    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "android:toDegrees"

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_2

    .line 350
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v0, v11, v13}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    .line 351
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "android:pivotX"

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_4

    .line 353
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 354
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v12

    .line 355
    .local v12, tv:Landroid/util/TypedValue;
    invoke-static {v12}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v8

    .line 356
    .local v8, d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v8, :cond_3

    .line 357
    iget v5, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 358
    iget v4, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 360
    :cond_3
    const/4 v9, 0x1

    .line 361
    goto :goto_1

    .line 362
    .end local v8           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v12           #tv:Landroid/util/TypedValue;
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "android:pivotY"

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_0

    .line 364
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 365
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v12

    .line 366
    .restart local v12       #tv:Landroid/util/TypedValue;
    invoke-static {v12}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v8

    .line 367
    .restart local v8       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v8, :cond_5

    .line 368
    iget v7, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 369
    iget v6, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 371
    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    .line 376
    .end local v8           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v12           #tv:Landroid/util/TypedValue;
    :cond_6
    if-nez v9, :cond_7

    .line 377
    const-string v13, "android:pivotX"

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v8

    .line 378
    .restart local v8       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v8, :cond_7

    .line 379
    iget v5, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 380
    iget v4, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 384
    .end local v8           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    :cond_7
    if-nez v10, :cond_8

    .line 385
    const-string v13, "android:pivotY"

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v8

    .line 386
    .restart local v8       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v8, :cond_8

    .line 387
    iget v7, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 388
    iget v6, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 392
    .end local v8           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    :cond_8
    new-instance v1, Landroid/view/animation/RotateAnimation;

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 395
    .local v1, ani:Landroid/view/animation/Animation;
    move-object/from16 v0, p1

    invoke-static {v1, p0, v0}, Lcom/htc/customize/animation/HtcAnimationSet;->addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 396
    return-object v1
.end method

.method public static createScaleAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;
    .locals 18
    .parameter "context"
    .parameter "attrs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/TypedValue;",
            ">;)",
            "Landroid/view/animation/Animation;"
        }
    .end annotation

    .prologue
    .line 516
    .local p2, inherit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/util/TypedValue;>;"
    const/4 v3, 0x0

    .line 517
    .local v3, fx:F
    const/4 v4, 0x0

    .line 518
    .local v4, tx:F
    const/4 v5, 0x0

    .line 519
    .local v5, fy:F
    const/4 v6, 0x0

    .line 520
    .local v6, ty:F
    const/4 v8, 0x0

    .line 521
    .local v8, px:F
    const/4 v10, 0x0

    .line 522
    .local v10, py:F
    const/4 v7, 0x0

    .line 523
    .local v7, pxtype:I
    const/4 v9, 0x0

    .line 524
    .local v9, pytype:I
    const/4 v12, 0x0

    .line 525
    .local v12, hasPivotX:Z
    const/4 v13, 0x0

    .line 526
    .local v13, hasPivotY:Z
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    .line 528
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "android:fromXScale"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_1

    .line 529
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v14, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 530
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(F)V

    .line 526
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 531
    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "android:toXScale"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_2

    .line 532
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v14, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 533
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(F)V

    goto :goto_1

    .line 534
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "android:fromYScale"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_3

    .line 535
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v14, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 536
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(F)V

    goto :goto_1

    .line 537
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "android:toYScale"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_4

    .line 538
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v14, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 539
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(F)V

    goto :goto_1

    .line 540
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "android:pivotX"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_6

    .line 541
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v15

    .line 542
    .local v15, tv:Landroid/util/TypedValue;
    invoke-static {v15}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v11

    .line 543
    .local v11, d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v11, :cond_5

    .line 544
    iget v8, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 545
    iget v7, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 548
    :cond_5
    const/4 v12, 0x1

    .line 549
    goto/16 :goto_1

    .end local v11           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v15           #tv:Landroid/util/TypedValue;
    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "android:pivotY"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_0

    .line 550
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v15

    .line 551
    .restart local v15       #tv:Landroid/util/TypedValue;
    invoke-static {v15}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v11

    .line 552
    .restart local v11       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v11, :cond_7

    .line 553
    iget v10, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 554
    iget v9, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 557
    :cond_7
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 560
    .end local v11           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v15           #tv:Landroid/util/TypedValue;
    :cond_8
    if-nez v12, :cond_9

    .line 561
    const-string v16, "android:pivotX"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v11

    .line 562
    .restart local v11       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v11, :cond_9

    .line 563
    iget v8, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 564
    iget v7, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 568
    .end local v11           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    :cond_9
    if-nez v13, :cond_a

    .line 569
    const-string v16, "android:pivotY"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v11

    .line 570
    .restart local v11       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v11, :cond_a

    .line 571
    iget v10, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 572
    iget v9, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 575
    .end local v11           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    :cond_a
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 578
    .local v2, ani:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 579
    return-object v2
.end method

.method public static createTranslateAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;
    .locals 14
    .parameter "context"
    .parameter "attrs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/TypedValue;",
            ">;)",
            "Landroid/view/animation/Animation;"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, inherit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/util/TypedValue;>;"
    const/4 v2, 0x0

    .line 124
    .local v2, fx:F
    const/4 v6, 0x0

    .line 125
    .local v6, fy:F
    const/4 v4, 0x0

    .line 126
    .local v4, tx:F
    const/4 v8, 0x0

    .line 127
    .local v8, ty:F
    const/4 v1, 0x0

    .line 128
    .local v1, fxtype:I
    const/4 v5, 0x0

    .line 129
    .local v5, fytype:I
    const/4 v3, 0x0

    .line 130
    .local v3, txtype:I
    const/4 v7, 0x0

    .line 132
    .local v7, tytype:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v12

    if-ge v10, v12, :cond_4

    .line 133
    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "android:fromXDelta"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_1

    .line 135
    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v11

    .line 136
    .local v11, tv:Landroid/util/TypedValue;
    invoke-static {v11}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v9

    .line 137
    .local v9, d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v9, :cond_0

    .line 138
    iget v2, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 139
    iget v1, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    .line 132
    .end local v9           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v11           #tv:Landroid/util/TypedValue;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "android:fromYDelta"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_2

    .line 143
    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v11

    .line 144
    .restart local v11       #tv:Landroid/util/TypedValue;
    invoke-static {v11}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v9

    .line 145
    .restart local v9       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v9, :cond_0

    .line 146
    iget v6, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 147
    iget v5, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto :goto_1

    .line 149
    .end local v9           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v11           #tv:Landroid/util/TypedValue;
    :cond_2
    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "android:toXDelta"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_3

    .line 151
    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v11

    .line 152
    .restart local v11       #tv:Landroid/util/TypedValue;
    invoke-static {v11}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v9

    .line 153
    .restart local v9       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v9, :cond_0

    .line 154
    iget v4, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 155
    iget v3, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto :goto_1

    .line 157
    .end local v9           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v11           #tv:Landroid/util/TypedValue;
    :cond_3
    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "android:toYDelta"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_0

    .line 159
    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v11

    .line 160
    .restart local v11       #tv:Landroid/util/TypedValue;
    invoke-static {v11}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v9

    .line 161
    .restart local v9       #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    if-eqz v9, :cond_0

    .line 162
    iget v8, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    .line 163
    iget v7, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto :goto_1

    .line 167
    .end local v9           #d:Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .end local v11           #tv:Landroid/util/TypedValue;
    :cond_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 170
    .local v0, ani:Landroid/view/animation/Animation;
    invoke-static {v0, p0, p1}, Lcom/htc/customize/animation/HtcAnimationSet;->addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    return-object v0
.end method

.method protected static getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "attrs"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 654
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    move-object v0, p2

    .line 696
    :cond_0
    :goto_0
    return-object v0

    .line 659
    :cond_1
    invoke-interface {p0, p1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, sval:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 662
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 666
    :cond_2
    if-eqz p2, :cond_0

    .line 667
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 670
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 672
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 673
    :cond_3
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_4

    .line 675
    invoke-static {v0}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 676
    :cond_4
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 678
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_5
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 681
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 682
    :cond_6
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_7

    .line 684
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 685
    :cond_7
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_8

    .line 687
    invoke-static {v0}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 688
    :cond_8
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 690
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 692
    :cond_9
    const-string v1, "HtcAnimationSet"

    const-string v2, "formatValueByRef unexpected type"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static packComplexFloat(F)I
    .locals 5
    .parameter "fv"

    .prologue
    .line 585
    const/high16 v0, 0x4380

    .line 587
    .local v0, MANTISSA_MULT:F
    const/4 v3, 0x4

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    .line 593
    .local v1, RADIX_MULTS:[F
    const/4 v2, 0x2

    .line 594
    .local v2, nType:I
    aget v3, v1, v2

    mul-float/2addr v3, p0

    const/high16 v4, 0x4380

    mul-float/2addr v3, v4

    float-to-int v3, v3

    or-int/lit8 v3, v3, 0x20

    return v3

    .line 587
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x43t
        0x0t 0x0t 0x0t 0x47t
        0x0t 0x0t 0x0t 0x4bt
    .end array-data
.end method

.method public static packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;
    .locals 11
    .parameter "strValue"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x0

    const v8, 0x3c23d70a

    .line 600
    const/high16 v0, 0x3b80

    .line 601
    .local v0, MANTISSA_MULT:F
    const/high16 v1, 0x3f00

    .line 602
    .local v1, RADIX_MULT:F
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 604
    .local v6, tv:Landroid/util/TypedValue;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, str:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 606
    :cond_0
    const/4 v6, 0x0

    .line 641
    .end local v6           #tv:Landroid/util/TypedValue;
    :goto_0
    return-object v6

    .line 608
    .restart local v6       #tv:Landroid/util/TypedValue;
    :cond_1
    const-string v7, "%"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 609
    iput v10, v6, Landroid/util/TypedValue;->type:I

    .line 610
    const-string v7, "%"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, stritems:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, t:I
    :goto_1
    array-length v7, v4

    if-ge v5, v7, :cond_3

    .line 612
    aget-object v7, v4, v5

    if-eqz v7, :cond_2

    .line 611
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 616
    :cond_3
    aget-object v7, v4, v9

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 617
    .local v2, fv:F
    mul-float/2addr v2, v8

    .line 618
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    .line 620
    invoke-static {v2}, Lcom/htc/customize/animation/HtcAnimationSet;->packComplexFloat(F)I

    move-result v7

    iput v7, v6, Landroid/util/TypedValue;->data:I

    .line 621
    invoke-static {v6}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    goto :goto_0

    .line 623
    .end local v2           #fv:F
    .end local v4           #stritems:[Ljava/lang/String;
    .end local v5           #t:I
    :cond_4
    const-string v7, "%p"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 624
    iput v10, v6, Landroid/util/TypedValue;->type:I

    .line 625
    const-string v7, "%"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 626
    .restart local v4       #stritems:[Ljava/lang/String;
    aget-object v7, v4, v9

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 627
    .restart local v2       #fv:F
    mul-float/2addr v2, v8

    .line 628
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    .line 629
    invoke-static {v2}, Lcom/htc/customize/animation/HtcAnimationSet;->packComplexFloat(F)I

    move-result v7

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/util/TypedValue;->data:I

    .line 630
    invoke-static {v6}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    goto :goto_0

    .line 633
    .end local v2           #fv:F
    .end local v4           #stritems:[Ljava/lang/String;
    :cond_5
    const/4 v7, -0x1

    const-string v8, "."

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_6

    .line 634
    const/16 v7, 0x10

    iput v7, v6, Landroid/util/TypedValue;->type:I

    .line 635
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 637
    :cond_6
    const/4 v7, 0x4

    iput v7, v6, Landroid/util/TypedValue;->type:I

    .line 638
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    iput v7, v6, Landroid/util/TypedValue;->data:I

    goto :goto_0
.end method

.method public static parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .locals 2
    .parameter "skey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/TypedValue;",
            ">;)",
            "Lcom/htc/customize/animation/HtcAnimationSet$Description;"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/util/TypedValue;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 326
    .local v0, val:Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    .line 327
    invoke-static {v0}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v1

    .line 329
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
