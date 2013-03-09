.class public Lcom/htc/customize/animation/HtcAnimationUtilsEx;
.super Landroid/view/animation/AnimationUtils;
.source "HtcAnimationUtilsEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAnimationUtilsEx"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/view/animation/AnimationUtils;-><init>()V

    return-void
.end method

.method protected static createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    .locals 2
    .parameter "c"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/htc/customize/animation/HtcAnimationUtilsEx;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method protected static createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;
    .locals 8
    .parameter "c"
    .parameter "parser"
    .parameter "parent"
    .parameter "attrs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/view/animation/AnimationSet;",
            "Landroid/util/AttributeSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/TypedValue;",
            ">;)",
            "Landroid/view/animation/Animation;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    .local p4, inherit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/util/TypedValue;>;"
    const/4 v0, 0x0

    .line 140
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 141
    .local v4, type:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 144
    .local v2, depth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_9

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    .line 146
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, name:Ljava/lang/String;
    const-string v5, "set"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v1, attr_map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/util/TypedValue;>;"
    invoke-static {p0, p3, v1}, Lcom/htc/customize/animation/HtcAnimationUtilsEx;->createAnimationSet(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 158
    invoke-static {v1, p4}, Lcom/htc/customize/animation/HtcAnimationUtilsEx;->inheritAttribute(Ljava/util/Map;Ljava/util/Map;)V

    move-object v5, v0

    .line 160
    check-cast v5, Landroid/view/animation/AnimationSet;

    invoke-static {p0, p1, v5, p3, v1}, Lcom/htc/customize/animation/HtcAnimationUtilsEx;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;

    .line 161
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 178
    .end local v1           #attr_map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/util/TypedValue;>;"
    :goto_1
    if-eqz p2, :cond_0

    .line 179
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 162
    :cond_2
    const-string v5, "alpha"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 163
    invoke-static {p0, p3, p4}, Lcom/htc/customize/animation/HtcAnimationSet;->createAlphaAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_3
    const-string v5, "scale"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    invoke-static {p0, p3, p4}, Lcom/htc/customize/animation/HtcAnimationSet;->createScaleAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 166
    :cond_4
    const-string v5, "rotate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 167
    invoke-static {p0, p3, p4}, Lcom/htc/customize/animation/HtcAnimationSet;->createRotateAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 168
    :cond_5
    const-string v5, "translate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 169
    invoke-static {p0, p3, p4}, Lcom/htc/customize/animation/HtcAnimationSet;->createTranslateAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 170
    :cond_6
    const-string v5, "m3dtranslate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 171
    invoke-static {p0, p3, p4}, Lcom/htc/customize/animation/HtcAnimationSet;->create3DTranslateAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 172
    :cond_7
    const-string v5, "m3drotate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 173
    invoke-static {p0, p3, p4}, Lcom/htc/customize/animation/HtcAnimationSet;->create3DRotateAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 175
    :cond_8
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown animation name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 183
    .end local v3           #name:Ljava/lang/String;
    :cond_9
    return-object v0
.end method

.method public static createAnimationSet(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/util/Map;)Landroid/view/animation/AnimationSet;
    .locals 10
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
            "Landroid/view/animation/AnimationSet;"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, inherit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/util/TypedValue;>;"
    const/4 v5, 0x0

    .local v5, t:I
    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 191
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 195
    :cond_0
    const/4 v1, 0x0

    .line 196
    .local v1, bRelative:Z
    const/4 v2, 0x0

    .line 197
    .local v2, bshareinterpolator:Z
    const-string v4, ""

    .line 198
    .local v4, str:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 199
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "android:shareInterpolator"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 200
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {p1, v3, v7}, Lcom/htc/customize/animation/HtcAnimationSet;->getAttributeValue(Landroid/util/AttributeSet;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 198
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 201
    :cond_2
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "android:pivotX"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 202
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v6

    .line 203
    .local v6, tv:Landroid/util/TypedValue;
    const-string v7, "pivotX"

    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 204
    .end local v6           #tv:Landroid/util/TypedValue;
    :cond_3
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "android:pivotY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 205
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/customize/animation/HtcAnimationSet;->packTypedValue(Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v6

    .line 206
    .restart local v6       #tv:Landroid/util/TypedValue;
    const-string v7, "pivotY"

    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 209
    .end local v6           #tv:Landroid/util/TypedValue;
    :cond_4
    new-instance v0, Lcom/htc/customize/animation/HtcAnimationSet;

    invoke-direct {v0, v2}, Lcom/htc/customize/animation/HtcAnimationSet;-><init>(Z)V

    .line 212
    .local v0, ast:Lcom/htc/customize/animation/HtcAnimationSet;
    invoke-static {v0, p0, p1}, Lcom/htc/customize/animation/HtcAnimationSet;->addAttributeToAnimation(Landroid/view/animation/Animation;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 214
    return-object v0
.end method

.method protected static createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .locals 8
    .parameter "c"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    const/4 v2, 0x0

    .line 339
    .local v2, interpolator:Landroid/view/animation/Interpolator;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 340
    .local v4, type:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 343
    .local v1, depth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_7

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    .line 345
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 349
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 351
    .local v0, attrs:Landroid/util/AttributeSet;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, name:Ljava/lang/String;
    const-string v5, "linearInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 355
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/LinearInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 356
    :cond_2
    const-string v5, "accelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 357
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 358
    :cond_3
    const-string v5, "decelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 359
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 360
    :cond_4
    const-string v5, "accelerateDecelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 361
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 362
    :cond_5
    const-string v5, "cycleInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 363
    new-instance v2, Landroid/view/animation/CycleInterpolator;

    .end local v2           #interpolator:Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2       #interpolator:Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 365
    :cond_6
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown interpolator name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 370
    .end local v0           #attrs:Landroid/util/AttributeSet;
    .end local v3           #name:Ljava/lang/String;
    :cond_7
    return-object v2
.end method

.method protected static createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .parameter "c"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/htc/customize/animation/HtcAnimationUtilsEx;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method protected static createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;
    .locals 7
    .parameter "c"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 265
    .local v0, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 269
    .local v1, depth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 271
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 275
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, name:Ljava/lang/String;
    const-string v4, "layoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 278
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    .end local v0           #controller:Landroid/view/animation/LayoutAnimationController;
    invoke-direct {v0, p0, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #controller:Landroid/view/animation/LayoutAnimationController;
    goto :goto_0

    .line 279
    :cond_2
    const-string v4, "gridLayoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 280
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController;

    .end local v0           #controller:Landroid/view/animation/LayoutAnimationController;
    invoke-direct {v0, p0, p2}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #controller:Landroid/view/animation/LayoutAnimationController;
    goto :goto_0

    .line 282
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown layout animation name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 287
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method private static inheritAttribute(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/TypedValue;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/TypedValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, attr_map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/util/TypedValue;>;"
    .local p1, inherit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/util/TypedValue;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 376
    const-string v0, "android:pivotX"

    .line 377
    .local v0, strName:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    .line 378
    .local v1, tv:Landroid/util/TypedValue;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 380
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_0
    const-string v0, "android:pivotX"

    .line 383
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #tv:Landroid/util/TypedValue;
    check-cast v1, Landroid/util/TypedValue;

    .line 384
    .restart local v1       #tv:Landroid/util/TypedValue;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 386
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .end local v0           #strName:Ljava/lang/String;
    .end local v1           #tv:Landroid/util/TypedValue;
    :cond_1
    return-void
.end method

.method public static loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 5
    .parameter "context"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 67
    invoke-static {p0, v1}, Lcom/htc/customize/animation/HtcAnimationUtilsEx;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 81
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v3

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, ex:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 73
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v0           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #rnf:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3

    .line 74
    :catch_1
    move-exception v0

    .line 75
    .local v0, ex:Ljava/io/IOException;
    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 78
    .restart local v2       #rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 79
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static loadAnimationFromXml(Landroid/content/Context;Ljava/lang/String;)Landroid/view/animation/Animation;
    .locals 8
    .parameter "context"
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 98
    .local v1, fis:Ljava/io/FileInputStream;
    const-string v5, "HtcAnimationUtilsEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 102
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v5

    if-lez v5, :cond_0

    .line 104
    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-static {p0, v3}, Lcom/htc/customize/animation/HtcAnimationUtilsEx;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 120
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    :cond_1
    :goto_0
    return-object v5

    .line 108
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 109
    .local v0, ex:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    :try_start_3
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load animation file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, rnf:Ljava/io/FileNotFoundException;
    invoke-virtual {v4, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    .end local v0           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4           #rnf:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 120
    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 123
    :cond_2
    :goto_3
    throw v5

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .local v0, ex:Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load animation file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v4       #rnf:Ljava/io/FileNotFoundException;
    invoke-virtual {v4, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 117
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v4           #rnf:Ljava/io/FileNotFoundException;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    goto :goto_3

    .line 119
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 113
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 108
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static loadInterpolator(Landroid/content/Context;Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .locals 8
    .parameter "context"
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v3, 0x0

    .line 302
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 303
    .local v1, fis:Ljava/io/FileInputStream;
    const-string v5, "HtcAnimationUtilsEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 307
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 308
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v5

    if-lez v5, :cond_0

    .line 309
    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 311
    :cond_0
    invoke-static {p0, v3}, Lcom/htc/customize/animation/HtcAnimationUtilsEx;->createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 324
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 327
    :cond_1
    :goto_0
    return-object v5

    .line 312
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 313
    .local v0, ex:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    :try_start_3
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load animation file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 315
    .local v4, rnf:Ljava/io/FileNotFoundException;
    invoke-virtual {v4, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 316
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    .end local v0           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4           #rnf:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 324
    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 327
    :cond_2
    :goto_3
    throw v5

    .line 317
    :catch_1
    move-exception v0

    .line 318
    .local v0, ex:Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load animation file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 320
    .restart local v4       #rnf:Ljava/io/FileNotFoundException;
    invoke-virtual {v4, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 321
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 325
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v4           #rnf:Ljava/io/FileNotFoundException;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    goto :goto_3

    .line 323
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 317
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 312
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static loadLayoutAnimationFromXml(Landroid/content/Context;Ljava/lang/String;)Landroid/view/animation/LayoutAnimationController;
    .locals 8
    .parameter "context"
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v3, 0x0

    .line 221
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 222
    .local v1, fis:Ljava/io/FileInputStream;
    const-string v5, "HtcAnimationUtilsEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 226
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v5

    if-lez v5, :cond_0

    .line 228
    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 230
    :cond_0
    invoke-static {p0, v3}, Lcom/htc/customize/animation/HtcAnimationUtilsEx;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 243
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 246
    :cond_1
    :goto_0
    return-object v5

    .line 231
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 232
    .local v0, ex:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    :try_start_3
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load animation file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 234
    .local v4, rnf:Ljava/io/FileNotFoundException;
    invoke-virtual {v4, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 235
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    .end local v0           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v4           #rnf:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 243
    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 246
    :cond_2
    :goto_3
    throw v5

    .line 236
    :catch_1
    move-exception v0

    .line 237
    .local v0, ex:Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load animation file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 239
    .restart local v4       #rnf:Ljava/io/FileNotFoundException;
    invoke-virtual {v4, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 240
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 244
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v4           #rnf:Ljava/io/FileNotFoundException;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    goto :goto_3

    .line 242
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 236
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 231
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method
