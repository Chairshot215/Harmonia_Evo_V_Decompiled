.class public Lcom/htc/gl/AnimInstance;
.super Lcom/htc/gl/Instance;
.source "AnimInstance.java"


# static fields
.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private isDrawing:Z

.field private isUpdateChild:Z

.field private mAlphastart:F

.field private mAlphatemp:F

.field private mAlphavalue:F

.field private mAngle_Xstart:F

.field private mAngle_Xtemp:F

.field private mAngle_Xvalue:F

.field private mAngle_Ystart:F

.field private mAngle_Ytemp:F

.field private mAngle_Yvalue:F

.field private mAngle_Zstart:F

.field private mAngle_Ztemp:F

.field private mAngle_Zvalue:F

.field private mBefortAngle_X:F

.field private mBefortAngle_Y:F

.field private mBefortAngle_Z:F

.field private mColor_B:F

.field private mColor_Bstart:F

.field private mColor_Btemp:F

.field private mColor_Bvalue:F

.field private mColor_G:F

.field private mColor_Gstart:F

.field private mColor_Gtemp:F

.field private mColor_Gvalue:F

.field private mColor_R:F

.field private mColor_Rstart:F

.field private mColor_Rtemp:F

.field private mColor_Rvalue:F

.field private mHeight:I

.field private mParent_Alpha:F

.field private mScale_Xstart:F

.field private mScale_Xtemp:F

.field private mScale_Xvalue:F

.field private mScale_Ystart:F

.field private mScale_Ytemp:F

.field private mScale_Yvalue:F

.field mStartAnimationTime:J

.field private mWidth:I

.field private mXstart:F

.field private mXtemp:F

.field private mXvalue:F

.field private mYstart:F

.field private mYtemp:F

.field private mYvalue:F

.field private mZstart:F

.field private mZtemp:F

.field private mZvalue:F

.field protected m_Animation:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/gl/anim/AnimationObj;",
            ">;"
        }
    .end annotation
.end field

.field private outValue:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/gl/AnimInstance;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/htc/gl/Instance;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/gl/AnimInstance;->mStartAnimationTime:J

    .line 19
    iput v4, p0, Lcom/htc/gl/AnimInstance;->mWidth:I

    iput v4, p0, Lcom/htc/gl/AnimInstance;->mHeight:I

    .line 20
    iput v2, p0, Lcom/htc/gl/AnimInstance;->mXstart:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mXvalue:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mXtemp:F

    .line 21
    iput v2, p0, Lcom/htc/gl/AnimInstance;->mYstart:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mYvalue:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mYtemp:F

    .line 22
    iput v2, p0, Lcom/htc/gl/AnimInstance;->mZstart:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mZvalue:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mZtemp:F

    .line 24
    iput v2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xstart:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xvalue:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xtemp:F

    .line 25
    iput v2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ystart:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Yvalue:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ytemp:F

    .line 26
    iput v2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zstart:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zvalue:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ztemp:F

    .line 28
    iput v3, p0, Lcom/htc/gl/AnimInstance;->mAlphastart:F

    iput v3, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mAlphatemp:F

    .line 30
    iput v3, p0, Lcom/htc/gl/AnimInstance;->mScale_Xstart:F

    iput v3, p0, Lcom/htc/gl/AnimInstance;->mScale_Xvalue:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mScale_Xtemp:F

    .line 31
    iput v3, p0, Lcom/htc/gl/AnimInstance;->mScale_Ystart:F

    iput v3, p0, Lcom/htc/gl/AnimInstance;->mScale_Yvalue:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mScale_Ytemp:F

    .line 33
    iput v3, p0, Lcom/htc/gl/AnimInstance;->mParent_Alpha:F

    .line 35
    iput v3, p0, Lcom/htc/gl/AnimInstance;->mColor_Rstart:F

    iput v3, p0, Lcom/htc/gl/AnimInstance;->mColor_Rvalue:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mColor_Rtemp:F

    .line 36
    iput v3, p0, Lcom/htc/gl/AnimInstance;->mColor_Gstart:F

    iput v3, p0, Lcom/htc/gl/AnimInstance;->mColor_Gvalue:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mColor_Gtemp:F

    .line 37
    iput v3, p0, Lcom/htc/gl/AnimInstance;->mColor_Bstart:F

    iput v3, p0, Lcom/htc/gl/AnimInstance;->mColor_Bvalue:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mColor_Btemp:F

    .line 38
    iput v3, p0, Lcom/htc/gl/AnimInstance;->mColor_R:F

    iput v3, p0, Lcom/htc/gl/AnimInstance;->mColor_G:F

    iput v3, p0, Lcom/htc/gl/AnimInstance;->mColor_B:F

    .line 39
    iput v2, p0, Lcom/htc/gl/AnimInstance;->mBefortAngle_X:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mBefortAngle_Y:F

    iput v2, p0, Lcom/htc/gl/AnimInstance;->mBefortAngle_Z:F

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/gl/AnimInstance;->isDrawing:Z

    .line 42
    iput-boolean v4, p0, Lcom/htc/gl/AnimInstance;->isUpdateChild:Z

    .line 240
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/gl/AnimInstance;->outValue:[F

    .line 47
    return-void
.end method

.method private checkChange(IF)V
    .locals 1
    .parameter "kind"
    .parameter "value"

    .prologue
    .line 349
    packed-switch p1, :pswitch_data_0

    .line 381
    :goto_0
    return-void

    .line 352
    :pswitch_0
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mXtemp:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mXtemp:F

    goto :goto_0

    .line 355
    :pswitch_1
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mYtemp:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mYtemp:F

    goto :goto_0

    .line 358
    :pswitch_2
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mZtemp:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mZtemp:F

    goto :goto_0

    .line 361
    :pswitch_3
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xtemp:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xtemp:F

    goto :goto_0

    .line 364
    :pswitch_4
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ytemp:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ytemp:F

    goto :goto_0

    .line 367
    :pswitch_5
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ztemp:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ztemp:F

    goto :goto_0

    .line 370
    :pswitch_6
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAlphatemp:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAlphatemp:F

    goto :goto_0

    .line 374
    :pswitch_7
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Xtemp:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Xtemp:F

    goto :goto_0

    .line 378
    :pswitch_8
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Ytemp:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Ytemp:F

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private checkChangeByKeyFrame(I[F)V
    .locals 6
    .parameter "kind"
    .parameter "value"

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 321
    sparse-switch p1, :sswitch_data_0

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 324
    :sswitch_0
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mXstart:F

    aget v1, p2, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mXvalue:F

    .line 325
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mYstart:F

    aget v1, p2, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mYvalue:F

    .line 326
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mZstart:F

    aget v1, p2, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mZvalue:F

    goto :goto_0

    .line 329
    :sswitch_1
    aget v0, p2, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Xvalue:F

    .line 330
    aget v0, p2, v2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Yvalue:F

    goto :goto_0

    .line 333
    :sswitch_2
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xstart:F

    aget v1, p2, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xvalue:F

    .line 334
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ystart:F

    aget v1, p2, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Yvalue:F

    .line 335
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zstart:F

    aget v1, p2, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zvalue:F

    goto :goto_0

    .line 338
    :sswitch_3
    aget v0, p2, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    .line 339
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 340
    iput v3, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    goto :goto_0

    .line 341
    :cond_1
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 342
    iput v4, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    goto :goto_0

    .line 321
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0x10000 -> :sswitch_0
        0x10001 -> :sswitch_1
        0x10002 -> :sswitch_2
    .end sparse-switch
.end method

.method private resetTempValue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    iput v1, p0, Lcom/htc/gl/AnimInstance;->mScale_Ytemp:F

    iput v1, p0, Lcom/htc/gl/AnimInstance;->mScale_Xtemp:F

    .line 296
    iput v1, p0, Lcom/htc/gl/AnimInstance;->mZtemp:F

    iput v1, p0, Lcom/htc/gl/AnimInstance;->mYtemp:F

    iput v1, p0, Lcom/htc/gl/AnimInstance;->mXtemp:F

    .line 297
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAlphatemp:F

    .line 298
    iput v1, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ztemp:F

    iput v1, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ytemp:F

    iput v1, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xtemp:F

    .line 299
    iput v1, p0, Lcom/htc/gl/AnimInstance;->mColor_Btemp:F

    iput v1, p0, Lcom/htc/gl/AnimInstance;->mColor_Gtemp:F

    iput v1, p0, Lcom/htc/gl/AnimInstance;->mColor_Rtemp:F

    .line 301
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mXstart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mXvalue:F

    .line 302
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mYstart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mYvalue:F

    .line 303
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mZstart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mZvalue:F

    .line 305
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Xstart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Xvalue:F

    .line 306
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Ystart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Yvalue:F

    .line 308
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xstart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xvalue:F

    .line 309
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ystart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Yvalue:F

    .line 310
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zstart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zvalue:F

    .line 312
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mColor_Rstart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mColor_Rvalue:F

    .line 313
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mColor_Gstart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mColor_Gvalue:F

    .line 314
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mColor_Bstart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mColor_Bvalue:F

    .line 316
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAlphastart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    .line 317
    return-void
.end method

.method private setValue()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 275
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mXstart:F

    iget v1, p0, Lcom/htc/gl/AnimInstance;->mXtemp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mXvalue:F

    .line 276
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mYstart:F

    iget v1, p0, Lcom/htc/gl/AnimInstance;->mYtemp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mYvalue:F

    .line 277
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mZstart:F

    iget v1, p0, Lcom/htc/gl/AnimInstance;->mZtemp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mZvalue:F

    .line 279
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xstart:F

    iget v1, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xtemp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xvalue:F

    .line 280
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ystart:F

    iget v1, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ytemp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Yvalue:F

    .line 281
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zstart:F

    iget v1, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ztemp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zvalue:F

    .line 283
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Xstart:F

    iget v1, p0, Lcom/htc/gl/AnimInstance;->mScale_Xtemp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Xvalue:F

    .line 284
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Ystart:F

    iget v1, p0, Lcom/htc/gl/AnimInstance;->mScale_Ytemp:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Yvalue:F

    .line 286
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAlphatemp:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    .line 287
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 288
    iput v2, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 290
    iput v3, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    goto :goto_0
.end method


# virtual methods
.method public attachAnimationChild(Lcom/htc/gl/anim/AnimationObj;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public attachAnimationChildbyKeyFrame(Lcom/htc/gl/anim/AnimationObj;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public detachAnimationChild(Lcom/htc/gl/anim/AnimationObj;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public detachAnimationChild(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/htc/gl/AnimInstance;->findAnimationChild(Ljava/lang/String;)Lcom/htc/gl/anim/AnimationObj;

    move-result-object v0

    .line 140
    .local v0, targetNode:Lcom/htc/gl/anim/AnimationObj;
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 144
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    .line 417
    iget-boolean v2, p0, Lcom/htc/gl/AnimInstance;->m_Visible:Z

    if-eqz v2, :cond_3

    .line 419
    sget-object v3, Lcom/htc/gl/AnimInstance;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 429
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/htc/gl/AnimInstance;->isDrawing:Z

    .line 430
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Renderable:Lcom/htc/gl/shape/Renderable;

    if-eqz v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Material:Lcom/htc/gl/Material;

    if-eqz v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Material:Lcom/htc/gl/Material;

    invoke-virtual {v2, p1}, Lcom/htc/gl/Material;->setMaterialParameters(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 441
    :goto_0
    iget v2, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    iget v4, p0, Lcom/htc/gl/AnimInstance;->mParent_Alpha:F

    mul-float v0, v2, v4

    .line 442
    .local v0, alpha:F
    iget v2, p0, Lcom/htc/gl/AnimInstance;->mColor_Rvalue:F

    mul-float/2addr v2, v0

    iget v4, p0, Lcom/htc/gl/AnimInstance;->mColor_Gvalue:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/htc/gl/AnimInstance;->mColor_Bvalue:F

    mul-float/2addr v5, v0

    invoke-interface {p1, v2, v4, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 444
    const/16 v2, 0x1700

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 445
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 447
    iget v2, p0, Lcom/htc/gl/AnimInstance;->mXvalue:F

    iget v4, p0, Lcom/htc/gl/AnimInstance;->mYvalue:F

    iget v5, p0, Lcom/htc/gl/AnimInstance;->mZvalue:F

    invoke-interface {p1, v2, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 449
    iget v2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xvalue:F

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {p1, v2, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 450
    iget v2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Yvalue:F

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-interface {p1, v2, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 451
    iget v2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zvalue:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-interface {p1, v2, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 454
    iget v2, p0, Lcom/htc/gl/AnimInstance;->mBefortAngle_X:F

    iget v4, p0, Lcom/htc/gl/AnimInstance;->mBefortAngle_Y:F

    iget v5, p0, Lcom/htc/gl/AnimInstance;->mBefortAngle_Z:F

    invoke-interface {p1, v2, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 456
    iget v2, p0, Lcom/htc/gl/AnimInstance;->mWidth:I

    int-to-float v2, v2

    iget v4, p0, Lcom/htc/gl/AnimInstance;->mScale_Xvalue:F

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/htc/gl/AnimInstance;->mHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/gl/AnimInstance;->mScale_Yvalue:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f80

    invoke-interface {p1, v2, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 458
    invoke-virtual {p0, p1}, Lcom/htc/gl/AnimInstance;->onDrawRenderable(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 459
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 462
    .end local v0           #alpha:F
    :cond_0
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    if-eqz v2, :cond_2

    .line 464
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 466
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/gl/Instance;

    iget v4, p0, Lcom/htc/gl/AnimInstance;->mParent_Alpha:F

    iget v5, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/htc/gl/Instance;->setAlphaByParent(F)V

    .line 467
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/gl/Instance;

    iget v4, p0, Lcom/htc/gl/AnimInstance;->mXvalue:F

    iget v5, p0, Lcom/htc/gl/AnimInstance;->mYvalue:F

    iget v6, p0, Lcom/htc/gl/AnimInstance;->mZvalue:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/gl/Instance;->setPositionByParent(FFF)V

    .line 468
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/gl/Instance;

    iget v4, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xvalue:F

    iget v5, p0, Lcom/htc/gl/AnimInstance;->mAngle_Yvalue:F

    iget v6, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zvalue:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/gl/Instance;->setAngleByParent(FFF)V

    .line 469
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/gl/Instance;

    iget v4, p0, Lcom/htc/gl/AnimInstance;->mScale_Xvalue:F

    iget v5, p0, Lcom/htc/gl/AnimInstance;->mScale_Yvalue:F

    const/high16 v6, 0x3f80

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/gl/Instance;->setScaleByParent(FFF)V

    .line 470
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/gl/Instance;

    invoke-virtual {v2, p1}, Lcom/htc/gl/Instance;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 437
    .end local v1           #i:I
    :cond_1
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_0

    .line 477
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 474
    :cond_2
    const/high16 v2, 0x3f80

    :try_start_1
    iput v2, p0, Lcom/htc/gl/AnimInstance;->mParent_Alpha:F

    .line 475
    invoke-direct {p0}, Lcom/htc/gl/AnimInstance;->resetTempValue()V

    .line 476
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/gl/AnimInstance;->isDrawing:Z

    .line 477
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    :cond_3
    return-void
.end method

.method public findAnimationChild(Ljava/lang/String;)Lcom/htc/gl/anim/AnimationObj;
    .locals 4
    .parameter "name"

    .prologue
    .line 154
    iget-object v3, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 155
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 156
    iget-object v3, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gl/anim/AnimationObj;

    .line 157
    .local v1, node:Lcom/htc/gl/anim/AnimationObj;
    invoke-virtual {v1}, Lcom/htc/gl/anim/AnimationObj;->getObjName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    .end local v1           #node:Lcom/htc/gl/anim/AnimationObj;
    :goto_1
    return-object v1

    .line 155
    .restart local v1       #node:Lcom/htc/gl/anim/AnimationObj;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v1           #node:Lcom/htc/gl/anim/AnimationObj;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 485
    invoke-super {p0}, Lcom/htc/gl/Instance;->onDestroy()V

    .line 487
    iget-object v1, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    if-eqz v1, :cond_1

    .line 489
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gl/anim/AnimationObj;

    invoke-virtual {v1}, Lcom/htc/gl/anim/AnimationObj;->onDestroy()V

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 495
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    .line 497
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 96
    iput p1, p0, Lcom/htc/gl/AnimInstance;->mAlphavalue:F

    iput p1, p0, Lcom/htc/gl/AnimInstance;->mAlphastart:F

    .line 97
    return-void
.end method

.method public setAlphaByParent(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 386
    iput p1, p0, Lcom/htc/gl/AnimInstance;->mParent_Alpha:F

    .line 387
    return-void
.end method

.method public setAngleByParent(FFF)V
    .locals 1
    .parameter "angle_x"
    .parameter "angle_y"
    .parameter "angle_z"

    .prologue
    .line 400
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xvalue:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xvalue:F

    .line 401
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Yvalue:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Yvalue:F

    .line 402
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zvalue:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zvalue:F

    .line 403
    return-void
.end method

.method public setColor(FFF)V
    .locals 0
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 63
    iput p1, p0, Lcom/htc/gl/AnimInstance;->mColor_Rstart:F

    iput p1, p0, Lcom/htc/gl/AnimInstance;->mColor_Rvalue:F

    .line 64
    iput p2, p0, Lcom/htc/gl/AnimInstance;->mColor_Gstart:F

    iput p2, p0, Lcom/htc/gl/AnimInstance;->mColor_Gvalue:F

    .line 65
    iput p3, p0, Lcom/htc/gl/AnimInstance;->mColor_Bstart:F

    iput p3, p0, Lcom/htc/gl/AnimInstance;->mColor_Bvalue:F

    .line 66
    return-void
.end method

.method public setPosition(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 83
    int-to-float v0, p1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mXstart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mXvalue:F

    .line 84
    int-to-float v0, p2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mYstart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mYvalue:F

    .line 85
    int-to-float v0, p3

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mZstart:F

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mZvalue:F

    .line 86
    return-void
.end method

.method public setPositionByParent(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 392
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mXvalue:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mXvalue:F

    .line 393
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mYvalue:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mYvalue:F

    .line 394
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mZvalue:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mZvalue:F

    .line 395
    return-void
.end method

.method public setRoation(FFF)V
    .locals 0
    .parameter "angle_x"
    .parameter "angle_y"
    .parameter "angle_z"

    .prologue
    .line 70
    iput p1, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xstart:F

    iput p1, p0, Lcom/htc/gl/AnimInstance;->mAngle_Xvalue:F

    .line 71
    iput p2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Ystart:F

    iput p2, p0, Lcom/htc/gl/AnimInstance;->mAngle_Yvalue:F

    .line 72
    iput p3, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zstart:F

    iput p3, p0, Lcom/htc/gl/AnimInstance;->mAngle_Zvalue:F

    .line 73
    return-void
.end method

.method public setScale(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 90
    iput p1, p0, Lcom/htc/gl/AnimInstance;->mScale_Xstart:F

    iput p1, p0, Lcom/htc/gl/AnimInstance;->mScale_Xvalue:F

    .line 91
    iput p2, p0, Lcom/htc/gl/AnimInstance;->mScale_Ystart:F

    iput p2, p0, Lcom/htc/gl/AnimInstance;->mScale_Yvalue:F

    .line 92
    return-void
.end method

.method public setScaleByParent(FFF)V
    .locals 1
    .parameter "scale_x"
    .parameter "scale_y"
    .parameter "scale_z"

    .prologue
    .line 408
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Xvalue:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Xvalue:F

    .line 409
    iget v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Yvalue:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/htc/gl/AnimInstance;->mScale_Yvalue:F

    .line 410
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 77
    iput p1, p0, Lcom/htc/gl/AnimInstance;->mWidth:I

    .line 78
    iput p2, p0, Lcom/htc/gl/AnimInstance;->mHeight:I

    .line 79
    return-void
.end method

.method public setTranBeforeAngle(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 56
    iput p1, p0, Lcom/htc/gl/AnimInstance;->mBefortAngle_X:F

    .line 57
    iput p2, p0, Lcom/htc/gl/AnimInstance;->mBefortAngle_Y:F

    .line 58
    iput p3, p0, Lcom/htc/gl/AnimInstance;->mBefortAngle_Z:F

    .line 59
    return-void
.end method

.method public setUpdateChild(Z)V
    .locals 0
    .parameter "update"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/gl/AnimInstance;->isUpdateChild:Z

    .line 52
    return-void
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/gl/AnimInstance;->mStartAnimationTime:J

    .line 170
    iget-object v1, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 172
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gl/Instance;

    invoke-virtual {v1}, Lcom/htc/gl/Instance;->startAnimation()V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    .line 182
    sget-object v4, Lcom/htc/gl/AnimInstance;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 184
    :try_start_0
    invoke-direct {p0}, Lcom/htc/gl/AnimInstance;->resetTempValue()V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/htc/gl/AnimInstance;->mStartAnimationTime:J

    sub-long/2addr v5, v7

    long-to-int v0, v5

    .line 188
    .local v0, diff:I
    iget-object v3, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 192
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 194
    iget-object v3, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/gl/anim/AnimationObj;

    invoke-virtual {v3}, Lcom/htc/gl/anim/AnimationObj;->getAnimationKind()I

    move-result v5

    iget-object v3, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/gl/anim/AnimationObj;

    invoke-virtual {v3, v0}, Lcom/htc/gl/anim/AnimationObj;->update(I)F

    move-result v3

    invoke-direct {p0, v5, v3}, Lcom/htc/gl/AnimInstance;->checkChange(IF)V

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_0
    invoke-direct {p0}, Lcom/htc/gl/AnimInstance;->setValue()V

    .line 201
    iget-boolean v3, p0, Lcom/htc/gl/AnimInstance;->isUpdateChild:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    if-eqz v3, :cond_1

    .line 203
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/gl/Instance;

    invoke-virtual {v3}, Lcom/htc/gl/Instance;->update()V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    .end local v1           #i:I
    :cond_1
    monitor-exit v4

    .line 209
    return-void

    .line 208
    .end local v0           #diff:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public update(I)V
    .locals 5
    .parameter "difftime"

    .prologue
    .line 214
    sget-object v3, Lcom/htc/gl/AnimInstance;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 216
    :try_start_0
    invoke-direct {p0}, Lcom/htc/gl/AnimInstance;->resetTempValue()V

    .line 218
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 221
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 223
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/gl/anim/AnimationObj;

    invoke-virtual {v2}, Lcom/htc/gl/anim/AnimationObj;->getAnimationKind()I

    move-result v4

    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/gl/anim/AnimationObj;

    invoke-virtual {v2, p1}, Lcom/htc/gl/anim/AnimationObj;->update(I)F

    move-result v2

    invoke-direct {p0, v4, v2}, Lcom/htc/gl/AnimInstance;->checkChange(IF)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    invoke-direct {p0}, Lcom/htc/gl/AnimInstance;->setValue()V

    .line 230
    iget-boolean v2, p0, Lcom/htc/gl/AnimInstance;->isUpdateChild:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    if-eqz v2, :cond_1

    .line 232
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/gl/Instance;

    invoke-virtual {v2, p1}, Lcom/htc/gl/Instance;->update(I)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    .end local v0           #i:I
    :cond_1
    monitor-exit v3

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateByKeyFrame(F)V
    .locals 12
    .parameter "frame"

    .prologue
    .line 245
    sget-object v3, Lcom/htc/gl/AnimInstance;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/htc/gl/AnimInstance;->resetTempValue()V

    .line 248
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 251
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 253
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->outValue:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/gl/AnimInstance;->outValue:[F

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/gl/AnimInstance;->outValue:[F

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/htc/gl/AnimInstance;->outValue:[F

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v9, v10

    aput v11, v7, v8

    aput v11, v5, v6

    aput v11, v2, v4

    .line 254
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/gl/anim/AnimationObj;

    iget-object v4, p0, Lcom/htc/gl/AnimInstance;->outValue:[F

    invoke-virtual {v2, p1, v4}, Lcom/htc/gl/anim/AnimationObj;->updateByKeyFrame(F[F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Animation:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/gl/anim/AnimationObj;

    invoke-virtual {v2}, Lcom/htc/gl/anim/AnimationObj;->getAnimationKind()I

    move-result v2

    iget-object v4, p0, Lcom/htc/gl/AnimInstance;->outValue:[F

    invoke-direct {p0, v2, v4}, Lcom/htc/gl/AnimInstance;->checkChangeByKeyFrame(I[F)V

    .line 251
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    iget-boolean v2, p0, Lcom/htc/gl/AnimInstance;->isUpdateChild:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    if-eqz v2, :cond_2

    .line 265
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 267
    iget-object v2, p0, Lcom/htc/gl/AnimInstance;->m_Children:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/gl/Instance;

    invoke-virtual {v2, p1}, Lcom/htc/gl/Instance;->updateByKeyFrame(F)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    .end local v0           #i:I
    :cond_2
    monitor-exit v3

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
