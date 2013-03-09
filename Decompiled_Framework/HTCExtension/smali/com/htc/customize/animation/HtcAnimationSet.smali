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

    invoke-direct {p0, p1, p2}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    return-void
.end method

.method public static addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto :goto_1

    :cond_2
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getFillBefore()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    goto :goto_1

    :cond_3
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_1

    :cond_4
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    goto/16 :goto_1

    :cond_5
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    goto/16 :goto_1

    :cond_6
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/customize/animation/HtcAnimationSet;->base_attr:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public static create3DRotateAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;
    .locals 24
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

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:fromDegreesX"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_1

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

    :cond_0
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:toDegreesX"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_2

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

    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:fromDegreesY"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_3

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

    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:toDegreesY"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_4

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

    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:pivotX"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v16

    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    iget v11, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move-object/from16 v0, v16

    iget v10, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_9
    const/16 v17, 0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:pivotY"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v16

    if-eqz v16, :cond_b

    move-object/from16 v0, v16

    iget v13, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move-object/from16 v0, v16

    iget v12, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_b
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "android:pivotZ"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v16

    if-eqz v16, :cond_d

    move-object/from16 v0, v16

    iget v15, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move-object/from16 v0, v16

    iget v14, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_d
    const/16 v19, 0x1

    goto/16 :goto_1

    :cond_e
    if-nez v17, :cond_f

    const-string v22, "android:pivotX"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v16

    if-eqz v16, :cond_f

    move-object/from16 v0, v16

    iget v11, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move-object/from16 v0, v16

    iget v10, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_f
    if-nez v18, :cond_10

    const-string v22, "android:pivotY"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v16

    if-eqz v16, :cond_10

    move-object/from16 v0, v16

    iget v13, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move-object/from16 v0, v16

    iget v12, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_10
    if-nez v18, :cond_11

    const-string v22, "android:pivotZ"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v16

    if-eqz v16, :cond_11

    move-object/from16 v0, v16

    iget v15, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move-object/from16 v0, v16

    iget v14, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_11
    new-instance v3, Lcom/htc/customize/animation/my3dRotateAnimation;

    invoke-direct/range {v3 .. v15}, Lcom/htc/customize/animation/my3dRotateAnimation;-><init>(FFFFFFIFIFIF)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v3
.end method

.method public static create3DTranslateAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;
    .locals 29
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

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v21

    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

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

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    iget v4, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move-object/from16 v0, v22

    iget v3, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_0
    :goto_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

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

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    iget v8, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move-object/from16 v0, v22

    iget v7, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto :goto_1

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

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    iget v12, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move-object/from16 v0, v22

    iget v11, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto :goto_1

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

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    iget v6, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move-object/from16 v0, v22

    iget v5, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto/16 :goto_1

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

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    iget v10, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move-object/from16 v0, v22

    iget v9, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto/16 :goto_1

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

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    iget v14, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move-object/from16 v0, v22

    iget v13, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto/16 :goto_1

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

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    if-eqz v22, :cond_7

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget v15, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_7
    const/16 v23, 0x1

    :cond_8
    const/16 v23, 0x1

    goto/16 :goto_1

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

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    if-eqz v22, :cond_a

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    move/from16 v17, v0

    :cond_a
    const/16 v24, 0x1

    goto/16 :goto_1

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

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    if-eqz v22, :cond_c

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move/from16 v20, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    move/from16 v19, v0

    :cond_c
    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_d
    if-nez v23, :cond_e

    const-string v21, "android:pivotX"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    if-eqz v22, :cond_e

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget v15, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_e
    if-nez v24, :cond_f

    const-string v21, "android:pivotY"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    if-eqz v22, :cond_f

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    move/from16 v17, v0

    :cond_f
    if-nez v25, :cond_10

    const-string v21, "android:pivotZ"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v22

    if-eqz v22, :cond_10

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    move/from16 v20, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    move/from16 v19, v0

    :cond_10
    new-instance v2, Lcom/htc/customize/animation/my3dTranslateAnimation;

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/htc/customize/animation/my3dTranslateAnimation;-><init>(IFIFIFIFIFIFIFIFIFZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v2
.end method

.method public static createAlphaAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;
    .locals 7
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

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {p1, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android:fromAlpha"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android:toAlpha"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {v0, p0, p1}, Lcom/htc/customize/animation/HtcAnimationSet;->addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public static createRotateAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;
    .locals 15
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

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v13

    if-ge v11, v13, :cond_6

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "android:fromDegrees"

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v0, v11, v13}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "android:toDegrees"

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_2

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

    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "android:pivotX"

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v8

    if-eqz v8, :cond_3

    iget v5, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    iget v4, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_3
    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "android:pivotY"

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v8

    if-eqz v8, :cond_5

    iget v7, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    iget v6, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    if-nez v9, :cond_7

    const-string v13, "android:pivotX"

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v8

    if-eqz v8, :cond_7

    iget v5, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    iget v4, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_7
    if-nez v10, :cond_8

    const-string v13, "android:pivotY"

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v8

    if-eqz v8, :cond_8

    iget v7, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    iget v6, v8, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_8
    new-instance v1, Landroid/view/animation/RotateAnimation;

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    move-object/from16 v0, p1

    invoke-static {v1, p0, v0}, Lcom/htc/customize/animation/HtcAnimationSet;->addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v1
.end method

.method public static createScaleAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;
    .locals 18
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

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "android:fromXScale"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_1

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

    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(F)V

    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "android:toXScale"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_2

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

    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(F)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "android:fromYScale"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_3

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

    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(F)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "android:toYScale"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_4

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

    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(F)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "android:pivotX"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_6

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v15

    invoke-static {v15}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v11

    if-eqz v11, :cond_5

    iget v8, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    iget v7, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_5
    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "android:pivotY"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v15

    invoke-static {v15}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v11

    if-eqz v11, :cond_7

    iget v10, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    iget v9, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_7
    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_8
    if-nez v12, :cond_9

    const-string v16, "android:pivotX"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v11

    if-eqz v11, :cond_9

    iget v8, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    iget v7, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_9
    if-nez v13, :cond_a

    const-string v16, "android:pivotY"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v11

    if-eqz v11, :cond_a

    iget v10, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    iget v9, v11, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_a
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v2, v0, v1}, Lcom/htc/customize/animation/HtcAnimationSet;->addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v2
.end method

.method public static createTranslateAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;
    .locals 14
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

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v12

    if-ge v10, v12, :cond_4

    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "android:fromXDelta"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_1

    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v9

    if-eqz v9, :cond_0

    iget v2, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    iget v1, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "android:fromYDelta"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_2

    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v9

    if-eqz v9, :cond_0

    iget v6, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    iget v5, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto :goto_1

    :cond_2
    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "android:toXDelta"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v9

    if-eqz v9, :cond_0

    iget v4, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    iget v3, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto :goto_1

    :cond_3
    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "android:toYDelta"

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {p1, v10}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v9

    if-eqz v9, :cond_0

    iget v8, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->value:F

    iget v7, v9, Lcom/htc/customize/animation/HtcAnimationSet$Description;->type:I

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-static {v0, p0, p1}, Lcom/htc/customize/animation/HtcAnimationSet;->addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected static getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    move-object v0, p2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0, p1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz p2, :cond_0

    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_4

    invoke-static {v0}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_5

    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_6
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_7

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_7
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :cond_8
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_9
    const-string v1, "HtcAnimationSet"

    const-string v2, "formatValueByRef unexpected type"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static packComplexFloat(F)I
    .locals 5

    const/high16 v0, 0x4380

    const/4 v3, 0x4

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x2

    aget v3, v1, v2

    mul-float/2addr v3, p0

    const/high16 v4, 0x4380

    mul-float/2addr v3, v4

    float-to-int v3, v3

    or-int/lit8 v3, v3, 0x20

    return v3

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

    const/4 v10, 0x6

    const/4 v9, 0x0

    const v8, 0x3c23d70a

    const/high16 v0, 0x3b80

    const/high16 v1, 0x3f00

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    const-string v7, "%"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput v10, v6, Landroid/util/TypedValue;->type:I

    const-string v7, "%"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    array-length v7, v4

    if-ge v5, v7, :cond_3

    aget-object v7, v4, v5

    if-eqz v7, :cond_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    aget-object v7, v4, v9

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/htc/customize/animation/HtcAnimationSet;->packComplexFloat(F)I

    move-result v7

    iput v7, v6, Landroid/util/TypedValue;->data:I

    invoke-static {v6}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    goto :goto_0

    :cond_4
    const-string v7, "%p"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iput v10, v6, Landroid/util/TypedValue;->type:I

    const-string v7, "%"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v7, v4, v9

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/htc/customize/animation/HtcAnimationSet;->packComplexFloat(F)I

    move-result v7

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/util/TypedValue;->data:I

    invoke-static {v6}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    goto :goto_0

    :cond_5
    const/4 v7, -0x1

    const-string v8, "."

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_6

    const/16 v7, 0x10

    iput v7, v6, Landroid/util/TypedValue;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Landroid/util/TypedValue;->data:I

    goto :goto_0

    :cond_6
    const/4 v7, 0x4

    iput v7, v6, Landroid/util/TypedValue;->type:I

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    iput v7, v6, Landroid/util/TypedValue;->data:I

    goto :goto_0
.end method

.method public static parseValueFromMap(Ljava/lang/String;Ljava/util/Map;)Lcom/htc/customize/animation/HtcAnimationSet$Description;
    .locals 2
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

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/htc/customize/animation/HtcAnimationSet$Description;->parseValue(Landroid/util/TypedValue;)Lcom/htc/customize/animation/HtcAnimationSet$Description;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
