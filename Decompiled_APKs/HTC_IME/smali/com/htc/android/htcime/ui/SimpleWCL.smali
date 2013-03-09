.class public Lcom/htc/android/htcime/ui/SimpleWCL;
.super Landroid/view/View;
.source "SimpleWCL.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static final BUBBLE_HORIZONTAL_PADDING:I = 0x2

.field private static final MARK_DEBUG:Z = false

.field public static final MOVE_FOCUS_TO_BUTTONS:I = -0x2

.field public static final OUT_OF_BOUNDS:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SimpleWCL"

.field protected static WCV_COUNT:I

.field private static sCPLandFullWCL_WIDTH:I

.field private static sCPPortFullWCL_WIDTH:I

.field private static sFONT_SIZE:F

.field private static sFullWCL_TOP_BOTTOM__PADDING:I


# instance fields
.field HILI_BGCOLOR:I

.field HILI_FGCOLOR:I

.field NORM_FGCOLOR:I

.field candDraws:[Lcom/htc/android/htcime/ui/DrawingObject;

.field emojiList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field hiliDrawable:Landroid/graphics/drawable/Drawable;

.field private mApk:Lcom/htc/android/htcime/util/APKResTool;

.field private mCandStart:[I

.field mCandcount:I

.field private mDescent:I

.field mEndDrawSubject:Lcom/htc/android/htcime/ui/EndDrawSubject;

.field private mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field private mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field mLastLineMaskWidth:I

.field mMaskRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreTotalVisibleCand:[I

.field private mRowID:[I

.field private mRowNum:I

.field private mSelectIndex:I

.field private mSetectedCand:Ljava/lang/String;

.field private mTotalVisibleCandPage:I

.field private mTouchX:I

.field private mTouchY:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mVisibleLineNum:I

.field private mWCLID:I

.field private mbFitViewBound:Z

.field private mbMultiLine:Z

.field private mbPressBottomBtn:Z

.field normalDrawable:Landroid/graphics/drawable/Drawable;

.field testEmoji:Landroid/graphics/drawable/Drawable;

.field testEmojiList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/htcime/ui/SimpleWCL;->sFONT_SIZE:F

    .line 70
    sput v1, Lcom/htc/android/htcime/ui/SimpleWCL;->sCPPortFullWCL_WIDTH:I

    .line 71
    sput v1, Lcom/htc/android/htcime/ui/SimpleWCL;->sCPLandFullWCL_WIDTH:I

    .line 74
    sput v1, Lcom/htc/android/htcime/ui/SimpleWCL;->sFullWCL_TOP_BOTTOM__PADDING:I

    .line 108
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->MAX_WCL_COUNT:I

    sput v0, Lcom/htc/android/htcime/ui/SimpleWCL;->WCV_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/SimpleWCL;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    iput v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mDescent:I

    .line 79
    iput-object v4, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 80
    iput-object v4, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 83
    iput v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    .line 84
    iput v5, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    .line 85
    iput-object v4, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSetectedCand:Ljava/lang/String;

    .line 86
    iput v2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchX:I

    .line 87
    iput v2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchY:I

    .line 91
    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbFitViewBound:Z

    .line 92
    iput v5, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    .line 94
    sget v1, Lcom/htc/android/htcime/ui/SimpleWCL;->WCV_COUNT:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mPreTotalVisibleCand:[I

    .line 95
    iput v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTotalVisibleCandPage:I

    .line 97
    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbMultiLine:Z

    .line 98
    iput v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mRowNum:I

    .line 99
    sget v1, Lcom/htc/android/htcime/ui/SimpleWCL;->WCV_COUNT:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mRowID:[I

    .line 100
    iput v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewHeight:I

    .line 101
    iput v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewWidth:I

    .line 104
    iput v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mWCLID:I

    .line 106
    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbPressBottomBtn:Z

    .line 109
    sget v1, Lcom/htc/android/htcime/ui/SimpleWCL;->WCV_COUNT:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandStart:[I

    .line 113
    iput-object v4, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    iput-object v4, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->normalDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-object v4, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->testEmoji:Landroid/graphics/drawable/Drawable;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->testEmojiList:Ljava/util/List;

    .line 123
    sget v1, Lcom/htc/android/htcime/ui/SimpleWCL;->WCV_COUNT:I

    new-array v1, v1, [Lcom/htc/android/htcime/ui/DrawingObject;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->candDraws:[Lcom/htc/android/htcime/ui/DrawingObject;

    .line 125
    iput v2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mLastLineMaskWidth:I

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mMaskRect:Landroid/graphics/Rect;

    .line 128
    iput v2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->HILI_BGCOLOR:I

    .line 129
    const/high16 v1, -0x100

    iput v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->HILI_FGCOLOR:I

    .line 130
    iput v2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->NORM_FGCOLOR:I

    .line 137
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->loadConstant(Landroid/content/Context;)V

    .line 139
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mPaint:Landroid/graphics/Paint;

    .line 140
    iget-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->NORM_FGCOLOR:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    iget-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/htc/android/htcime/ui/SimpleWCL;->sFONT_SIZE:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 143
    iget-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    iget-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mDescent:I

    .line 148
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->setWillNotDraw(Z)V

    .line 149
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->setHorizontalScrollBarEnabled(Z)V

    .line 150
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->setVerticalScrollBarEnabled(Z)V

    .line 152
    new-instance v1, Lcom/htc/android/htcime/util/APKResTool;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/htc/android/htcime/util/APKResTool;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mApk:Lcom/htc/android/htcime/util/APKResTool;

    .line 153
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->emojiList:Ljava/util/HashMap;

    .line 155
    new-instance v1, Lcom/htc/android/htcime/ui/EndDrawSubject;

    invoke-direct {v1}, Lcom/htc/android/htcime/ui/EndDrawSubject;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mEndDrawSubject:Lcom/htc/android/htcime/ui/EndDrawSubject;

    .line 159
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v1, v2, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 161
    .local v0, s:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->HILI_BGCOLOR:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iput-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .end local v0           #s:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 165
    .restart local v0       #s:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iput-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->normalDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    return-void

    .line 159
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x40t 0x41t
    .end array-data
.end method

.method private drawWclLine(IILandroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 15
    .parameter "startIndx"
    .parameter "endIndx"
    .parameter "canvas"
    .parameter "selectBG"
    .parameter "startXpos"
    .parameter "lineCount"

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    iget v13, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    const/4 v8, 0x1

    .line 280
    .local v8, selected:Z
    :goto_0
    iget v7, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    .line 281
    .local v7, select:I
    iget v9, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchX:I

    .line 282
    .local v9, touchX:I
    iget v10, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchY:I

    .line 283
    .local v10, touchY:I
    iget-object v6, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mPaint:Landroid/graphics/Paint;

    .line 285
    .local v6, paint:Landroid/graphics/Paint;
    iget v5, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->NORM_FGCOLOR:I

    .line 286
    .local v5, normalColor:I
    iget v2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->HILI_BGCOLOR:I

    .line 287
    .local v2, hiliBgColor:I
    iget v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->HILI_FGCOLOR:I

    .line 289
    .local v3, hiliFgColor:I
    const/4 v11, 0x0

    .line 290
    .local v11, wordWidth:I
    move/from16 v12, p5

    .line 291
    .local v12, x:I
    move/from16 v4, p1

    .local v4, i:I
    :goto_1
    move/from16 v0, p2

    if-gt v4, v0, :cond_5

    .line 292
    iget-object v13, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->candDraws:[Lcom/htc/android/htcime/ui/DrawingObject;

    aget-object v1, v13, v4

    .line 293
    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/DrawingObject;->getCandidateAreaWidth()I

    move-result v11

    .line 296
    move-object/from16 v0, p4

    iput v12, v0, Landroid/graphics/Rect;->left:I

    .line 297
    move-object/from16 v0, p4

    iget v13, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v11

    move-object/from16 v0, p4

    iput v13, v0, Landroid/graphics/Rect;->right:I

    .line 299
    if-nez v8, :cond_0

    const/4 v13, -0x1

    if-eq v9, v13, :cond_0

    const/4 v13, -0x1

    if-eq v10, v13, :cond_0

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_0

    if-eq v4, v7, :cond_0

    .line 302
    iput v4, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    .line 303
    const/4 v8, 0x1

    .line 304
    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/DrawingObject;->getCandStr()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSetectedCand:Ljava/lang/String;

    .line 307
    :cond_0
    if-eqz p3, :cond_2

    .line 309
    iget v13, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    if-ne v4, v13, :cond_4

    .line 310
    iget-object v13, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 311
    iget-object v13, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 312
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    :cond_1
    :goto_2
    int-to-float v13, v12

    move-object/from16 v0, p4

    iget v14, v0, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v13, v14}, Lcom/htc/android/htcime/ui/DrawingObject;->draw(Landroid/graphics/Canvas;FF)V

    .line 324
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    :cond_2
    iget-object v13, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandStart:[I

    aput v12, v13, v4

    .line 328
    iget-object v13, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mRowID:[I

    add-int/lit8 v14, p6, -0x1

    aput v14, v13, v4

    .line 329
    add-int/2addr v12, v11

    .line 291
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 279
    .end local v2           #hiliBgColor:I
    .end local v3           #hiliFgColor:I
    .end local v4           #i:I
    .end local v5           #normalColor:I
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v7           #select:I
    .end local v8           #selected:Z
    .end local v9           #touchX:I
    .end local v10           #touchY:I
    .end local v11           #wordWidth:I
    .end local v12           #x:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 316
    .restart local v2       #hiliBgColor:I
    .restart local v3       #hiliFgColor:I
    .restart local v4       #i:I
    .restart local v5       #normalColor:I
    .restart local v6       #paint:Landroid/graphics/Paint;
    .restart local v7       #select:I
    .restart local v8       #selected:Z
    .restart local v9       #touchX:I
    .restart local v10       #touchY:I
    .restart local v11       #wordWidth:I
    .restart local v12       #x:I
    :cond_4
    iget-object v13, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->normalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_1

    .line 317
    iget-object v13, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->normalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 318
    iget-object v13, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->normalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 331
    :cond_5
    return-void
.end method


# virtual methods
.method clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 241
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    iget v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchY:I

    iput v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchX:I

    iput v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    .line 243
    iput-object v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSetectedCand:Ljava/lang/String;

    .line 244
    iput v2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mRowNum:I

    .line 250
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->requestLayout()V

    .line 253
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->candDraws:[Lcom/htc/android/htcime/ui/DrawingObject;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->candDraws:[Lcom/htc/android/htcime/ui/DrawingObject;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    :cond_0
    return-void
.end method

.method public findLineSelection(ZI)I
    .locals 12
    .parameter "toNextLine"
    .parameter "mSelectedIndex"

    .prologue
    const/4 v11, 0x2

    const/4 v8, -0x1

    .line 1145
    iget-boolean v9, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbMultiLine:Z

    if-eqz v9, :cond_0

    if-eq p2, v8, :cond_0

    iget v9, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    if-lt p2, v9, :cond_2

    :cond_0
    move v6, v8

    .line 1207
    :cond_1
    :goto_0
    return v6

    .line 1152
    :cond_2
    iget-object v9, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mRowID:[I

    aget v7, v9, p2

    .line 1160
    .local v7, tmpCurrentRow:I
    if-eqz p1, :cond_4

    add-int/lit8 v9, v7, 0x1

    iget v10, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mRowNum:I

    if-ne v9, v10, :cond_4

    .line 1161
    iget v8, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    add-int/lit8 v8, v8, -0x1

    if-eq p2, v8, :cond_3

    .line 1162
    iget v8, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    add-int/lit8 v6, v8, -0x1

    goto :goto_0

    .line 1164
    :cond_3
    const/4 v6, -0x2

    goto :goto_0

    .line 1166
    :cond_4
    if-nez p1, :cond_5

    if-nez v7, :cond_5

    .line 1167
    const/4 v6, 0x0

    goto :goto_0

    .line 1169
    :cond_5
    if-eqz p1, :cond_9

    const/4 v1, 0x1

    .line 1170
    .local v1, acc:I
    :goto_1
    move v4, p2

    .line 1171
    .local v4, lineStratIndx:I
    iget-object v5, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mRowID:[I

    .line 1172
    .local v5, rowID:[I
    iget-object v2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandStart:[I

    .line 1173
    .local v2, candStart:[I
    const/16 v0, 0xff

    .line 1174
    .local v0, absDiff:I
    move v6, p2

    .line 1176
    .local v6, targetIndx:I
    if-eqz p1, :cond_a

    .line 1177
    :cond_6
    iget v8, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_7

    add-int/lit8 v4, v4, 0x1

    aget v8, v5, v4

    sub-int/2addr v8, v7

    if-eqz v8, :cond_6

    .line 1179
    :cond_7
    move v6, v4

    .line 1180
    :goto_2
    iget v8, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    if-ge v4, v8, :cond_1

    aget v8, v5, v4

    sub-int/2addr v8, v7

    if-ge v8, v11, :cond_1

    .line 1181
    aget v8, v2, p2

    aget v9, v2, v4

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1182
    .local v3, diff:I
    if-ge v3, v0, :cond_8

    .line 1183
    move v0, v3

    .line 1184
    move v6, v4

    .line 1186
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 1187
    goto :goto_2

    .end local v0           #absDiff:I
    .end local v1           #acc:I
    .end local v2           #candStart:[I
    .end local v3           #diff:I
    .end local v4           #lineStratIndx:I
    .end local v5           #rowID:[I
    .end local v6           #targetIndx:I
    :cond_9
    move v1, v8

    .line 1169
    goto :goto_1

    .line 1189
    .restart local v0       #absDiff:I
    .restart local v1       #acc:I
    .restart local v2       #candStart:[I
    .restart local v4       #lineStratIndx:I
    .restart local v5       #rowID:[I
    .restart local v6       #targetIndx:I
    :cond_a
    if-lez v4, :cond_b

    add-int/lit8 v4, v4, -0x1

    aget v9, v5, v4

    sub-int/2addr v9, v7

    if-eqz v9, :cond_a

    .line 1191
    :cond_b
    move v6, v4

    .line 1195
    :goto_3
    if-le v4, v8, :cond_1

    aget v9, v5, v4

    sub-int v9, v7, v9

    if-ge v9, v11, :cond_1

    .line 1196
    aget v9, v2, p2

    aget v10, v2, v4

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1197
    .restart local v3       #diff:I
    if-ge v3, v0, :cond_c

    .line 1198
    move v0, v3

    .line 1199
    move v6, v4

    .line 1201
    :cond_c
    add-int/lit8 v4, v4, -0x1

    .line 1202
    goto :goto_3
.end method

.method public getCandsSize()I
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    return v0
.end method

.method public getFirstPageCandNum(I)I
    .locals 22
    .parameter "idWCL"

    .prologue
    .line 907
    const/4 v6, 0x0

    .line 908
    .local v6, h_X_GAP:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v19, v0

    sget-object v9, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 909
    .local v9, im:Lcom/htc/android/htcime/Intf/IHTCIM;
    invoke-interface {v9}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v19

    move-object/from16 v0, v19

    iget v10, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 910
    .local v10, im_id:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getViewWidth()I

    move-result v19

    if-gtz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getWidth()I

    move-result v16

    .line 911
    .local v16, width:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getViewHeight()I

    move-result v19

    if-gtz v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getHeight()I

    move-result v19

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    move/from16 v20, v0

    div-int v7, v19, v20

    .line 914
    .local v7, height:I
    const/16 v19, 0x8

    move/from16 v0, v19

    if-eq v0, v10, :cond_0

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v0, v10, :cond_5

    .line 915
    :cond_0
    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 916
    sget v6, Lcom/htc/android/htcime/ui/SimpleWCL;->sCPPortFullWCL_WIDTH:I

    .line 923
    :goto_2
    shl-int/lit8 v3, v6, 0x1

    .line 924
    .local v3, X_GAP:I
    shl-int/lit8 v13, v3, 0x1

    .line 926
    .local v13, minWordWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->candDraws:[Lcom/htc/android/htcime/ui/DrawingObject;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v5, v19, v20

    .line 927
    .local v5, candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mPaint:Landroid/graphics/Paint;

    .line 929
    .local v14, paint:Landroid/graphics/Paint;
    const/4 v11, 0x0

    .line 930
    .local v11, isEmoji:Z
    const/16 v17, 0x0

    .line 931
    .local v17, wordWidth:I
    const/4 v15, 0x0

    .line 932
    .local v15, textWidth:F
    const/4 v4, 0x0

    .line 934
    .local v4, cand:Ljava/lang/String;
    const/16 v18, 0x0

    .line 935
    .local v18, x:I
    const/4 v12, 0x1

    .line 939
    .local v12, lineCount:I
    if-nez v5, :cond_d

    .line 940
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mWCLID:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbPressBottomBtn:Z

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v9, v0, v1, v2}, Lcom/htc/android/htcime/Intf/IHTCIM;->getWCLCand(IIZ)Ljava/lang/String;

    move-result-object v4

    .line 941
    if-nez v4, :cond_6

    const/4 v8, 0x0

    .line 1024
    :cond_1
    :goto_3
    return v8

    .line 910
    .end local v3           #X_GAP:I
    .end local v4           #cand:Ljava/lang/String;
    .end local v5           #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    .end local v7           #height:I
    .end local v11           #isEmoji:Z
    .end local v12           #lineCount:I
    .end local v13           #minWordWidth:I
    .end local v14           #paint:Landroid/graphics/Paint;
    .end local v15           #textWidth:F
    .end local v16           #width:I
    .end local v17           #wordWidth:I
    .end local v18           #x:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getViewWidth()I

    move-result v16

    goto :goto_0

    .line 911
    .restart local v16       #width:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getViewHeight()I

    move-result v19

    goto :goto_1

    .line 918
    .restart local v7       #height:I
    :cond_4
    sget v6, Lcom/htc/android/htcime/ui/SimpleWCL;->sCPLandFullWCL_WIDTH:I

    goto :goto_2

    .line 921
    :cond_5
    const/16 v6, 0xc

    goto :goto_2

    .line 943
    .restart local v3       #X_GAP:I
    .restart local v4       #cand:Ljava/lang/String;
    .restart local v5       #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    .restart local v11       #isEmoji:Z
    .restart local v12       #lineCount:I
    .restart local v13       #minWordWidth:I
    .restart local v14       #paint:Landroid/graphics/Paint;
    .restart local v15       #textWidth:F
    .restart local v17       #wordWidth:I
    .restart local v18       #x:I
    :cond_6
    const/16 v19, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isDefined(C)Z

    move-result v19

    if-nez v19, :cond_7

    const/4 v11, 0x1

    .line 944
    :goto_4
    if-eqz v11, :cond_8

    .line 945
    new-instance v5, Lcom/htc/android/htcime/ui/EmojiDrawingObject;

    .end local v5           #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mApk:Lcom/htc/android/htcime/util/APKResTool;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->emojiList:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v14, v0, v4}, Lcom/htc/android/htcime/ui/EmojiDrawingObject;-><init>(Landroid/graphics/Paint;Ljava/lang/Object;Ljava/lang/String;)V

    .line 954
    .restart local v5       #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    :goto_5
    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/DrawingObject;->getWidth()F

    move-result v15

    .line 956
    const/16 v19, 0x0

    cmpl-float v19, v19, v15

    if-nez v19, :cond_9

    .line 957
    const/4 v8, 0x0

    goto :goto_3

    .line 943
    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 951
    :cond_8
    new-instance v5, Lcom/htc/android/htcime/ui/StringDrawingObject;

    .end local v5           #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    invoke-direct {v5, v14, v4, v4}, Lcom/htc/android/htcime/ui/StringDrawingObject;-><init>(Landroid/graphics/Paint;Ljava/lang/Object;Ljava/lang/String;)V

    .restart local v5       #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    goto :goto_5

    .line 960
    :cond_9
    float-to-int v0, v15

    move/from16 v19, v0

    add-int v19, v19, v3

    move/from16 v0, v19

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 963
    invoke-virtual {v5, v7}, Lcom/htc/android/htcime/ui/DrawingObject;->setCandidateAreaHeight(I)V

    .line 964
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/htc/android/htcime/ui/DrawingObject;->setCandidateAreaWidth(I)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->candDraws:[Lcom/htc/android/htcime/ui/DrawingObject;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v5, v19, v20

    .line 974
    :goto_6
    add-int v19, v18, v17

    move/from16 v0, v19

    move/from16 v1, v16

    if-le v0, v1, :cond_a

    .line 975
    sub-int v19, v17, v16

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/htc/android/htcime/ui/DrawingObject;->dealOverSize(II)V

    .line 976
    move/from16 v17, v16

    .line 977
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/htc/android/htcime/ui/DrawingObject;->setCandidateAreaWidth(I)V

    .line 980
    :cond_a
    add-int v18, v18, v17

    .line 982
    const/4 v8, 0x1

    .local v8, i:I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_1

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->candDraws:[Lcom/htc/android/htcime/ui/DrawingObject;

    move-object/from16 v19, v0

    aget-object v5, v19, v8

    .line 985
    if-nez v5, :cond_11

    .line 986
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbPressBottomBtn:Z

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v9, v8, v0, v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getWCLCand(IIZ)Ljava/lang/String;

    move-result-object v4

    .line 987
    if-nez v4, :cond_b

    .line 988
    const-string v19, "SimpleWCL"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Candidate#"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is null."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    new-instance v4, Ljava/lang/String;

    .end local v4           #cand:Ljava/lang/String;
    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 992
    .restart local v4       #cand:Ljava/lang/String;
    :cond_b
    const/16 v19, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isDefined(C)Z

    move-result v19

    if-nez v19, :cond_f

    const/4 v11, 0x1

    .line 993
    :goto_8
    if-eqz v11, :cond_10

    .line 994
    new-instance v5, Lcom/htc/android/htcime/ui/EmojiDrawingObject;

    .end local v5           #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mApk:Lcom/htc/android/htcime/util/APKResTool;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->emojiList:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v14, v0, v4}, Lcom/htc/android/htcime/ui/EmojiDrawingObject;-><init>(Landroid/graphics/Paint;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1002
    .restart local v5       #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    :goto_9
    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/DrawingObject;->getWidth()F

    move-result v15

    .line 1003
    float-to-int v0, v15

    move/from16 v19, v0

    add-int v19, v19, v3

    move/from16 v0, v19

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1005
    invoke-virtual {v5, v7}, Lcom/htc/android/htcime/ui/DrawingObject;->setCandidateAreaHeight(I)V

    .line 1006
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/htc/android/htcime/ui/DrawingObject;->setCandidateAreaWidth(I)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->candDraws:[Lcom/htc/android/htcime/ui/DrawingObject;

    move-object/from16 v19, v0

    aput-object v5, v19, v8

    .line 1015
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbMultiLine:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    add-int v19, v18, v17

    move/from16 v0, v19

    move/from16 v1, v16

    if-le v0, v1, :cond_c

    .line 1016
    const/16 v18, 0x0

    .line 1017
    add-int/lit8 v12, v12, 0x1

    .line 1019
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v12, v0, :cond_1

    .line 1022
    :cond_c
    add-int v18, v18, v17

    .line 982
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 969
    .end local v8           #i:I
    :cond_d
    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/DrawingObject;->getCandStr()Ljava/lang/String;

    move-result-object v4

    .line 970
    const/16 v19, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isDefined(C)Z

    move-result v19

    if-nez v19, :cond_e

    const/4 v11, 0x1

    .line 971
    :goto_b
    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/DrawingObject;->getCandidateAreaWidth()I

    move-result v17

    goto/16 :goto_6

    .line 970
    :cond_e
    const/4 v11, 0x0

    goto :goto_b

    .line 992
    .restart local v8       #i:I
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 998
    :cond_10
    new-instance v5, Lcom/htc/android/htcime/ui/StringDrawingObject;

    .end local v5           #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    invoke-direct {v5, v14, v4, v4}, Lcom/htc/android/htcime/ui/StringDrawingObject;-><init>(Landroid/graphics/Paint;Ljava/lang/Object;Ljava/lang/String;)V

    .restart local v5       #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    goto :goto_9

    .line 1010
    :cond_11
    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/DrawingObject;->getCandStr()Ljava/lang/String;

    move-result-object v4

    .line 1011
    const/16 v19, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isDefined(C)Z

    move-result v19

    if-nez v19, :cond_12

    const/4 v11, 0x1

    .line 1012
    :goto_c
    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/DrawingObject;->getCandidateAreaWidth()I

    move-result v17

    goto :goto_a

    .line 1011
    :cond_12
    const/4 v11, 0x0

    goto :goto_c
.end method

.method public getLastLineMaskWidth()I
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mLastLineMaskWidth:I

    return v0
.end method

.method public getLineHeight()I
    .locals 2

    .prologue
    .line 1126
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewHeight:I

    iget v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getPerPageCandNum(I)I
    .locals 1
    .parameter "nPage"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mPreTotalVisibleCand:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPressAtBottomLine()Z
    .locals 1

    .prologue
    .line 1141
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbPressBottomBtn:Z

    return v0
.end method

.method public getRowIDofIndx(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1057
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    if-lt p1, v0, :cond_1

    .line 1058
    :cond_0
    const/4 v0, -0x1

    .line 1060
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mRowID:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public final getSelectedIndx()I
    .locals 1

    .prologue
    .line 1064
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    return v0
.end method

.method public getTotalRowNum()I
    .locals 2

    .prologue
    .line 1046
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mLastLineMaskWidth:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mRowNum:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mRowNum:I

    goto :goto_0
.end method

.method public getTotalVisibleCandPage()I
    .locals 1

    .prologue
    .line 901
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTotalVisibleCandPage:I

    return v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 1095
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .prologue
    .line 1112
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewWidth:I

    return v0
.end method

.method public getVisibleLineNum()I
    .locals 1

    .prologue
    .line 884
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    return v0
.end method

.method public getWCLID()I
    .locals 1

    .prologue
    .line 1134
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mWCLID:I

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 1
    .parameter "htcIMM"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 199
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 203
    return-void
.end method

.method initEmojiList()V
    .locals 8

    .prologue
    .line 211
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/system/lib/atok/emoji.tbl"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x800

    invoke-direct {v0, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 217
    .local v0, bufReader:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, strTmp:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 220
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 222
    goto :goto_0

    .line 225
    :cond_0
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v3, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v3, st:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    .line 227
    .local v5, unicode:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, path:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->emojiList:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 231
    goto :goto_0

    .line 232
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #st:Ljava/util/StringTokenizer;
    .end local v5           #unicode:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 233
    iget-object v6, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->testEmojiList:Ljava/util/List;

    iget-object v7, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->emojiList:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v0           #bufReader:Ljava/io/BufferedReader;
    .end local v4           #strTmp:Ljava/lang/String;
    :goto_1
    return-void

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SimpleECL"

    const-string v7, "initEmojiList error!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isFitViewBound()Z
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbFitViewBound:Z

    return v0
.end method

.method loadConstant(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 179
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/htc/android/htcime/ui/SimpleWCL;->sFONT_SIZE:F

    .line 181
    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ui/SimpleWCL;->sCPPortFullWCL_WIDTH:I

    .line 183
    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ui/SimpleWCL;->sCPLandFullWCL_WIDTH:I

    .line 185
    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ui/SimpleWCL;->sFullWCL_TOP_BOTTOM__PADDING:I

    .line 190
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 47
    .parameter "canvas"

    .prologue
    .line 347
    if-eqz p1, :cond_0

    .line 348
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 350
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    move/from16 v44, v0

    if-gtz v44, :cond_2

    .line 773
    :cond_1
    :goto_0
    return-void

    .line 367
    :cond_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    .line 368
    .local v9, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getViewHeight()I

    move-result v44

    if-gtz v44, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getHeight()I

    move-result v44

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    move/from16 v45, v0

    div-int v12, v44, v45

    .line 369
    .local v12, height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    move/from16 v44, v0

    mul-int v44, v44, v12

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewHeight:I

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getViewWidth()I

    move-result v44

    if-gtz v44, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getWidth()I

    move-result v40

    .line 372
    .local v40, width:I
    :goto_2
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewWidth:I

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mMaskRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    .line 375
    .local v25, maskRect:Landroid/graphics/Rect;
    const/16 v24, 0x0

    .line 381
    .local v24, maskApplyed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v44, v0

    sget-object v16, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 382
    .local v16, im:Lcom/htc/android/htcime/Intf/IHTCIM;
    invoke-interface/range {v16 .. v16}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    move/from16 v17, v0

    .line 383
    .local v17, im_id:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    move/from16 v32, v0

    .line 384
    .local v32, select:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchX:I

    move/from16 v38, v0

    .line 385
    .local v38, touchX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchY:I

    move/from16 v39, v0

    .line 386
    .local v39, touchY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbFitViewBound:Z

    move/from16 v20, v0

    .line 387
    .local v20, isFitViewBound:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbMultiLine:Z

    move/from16 v21, v0

    .line 389
    .local v21, isMultiLine:Z
    const/4 v11, 0x0

    .line 391
    .local v11, h_X_GAP:I
    const/16 v44, 0x8

    move/from16 v0, v44

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    const/16 v44, 0x2

    move/from16 v0, v44

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 392
    :cond_3
    const/16 v44, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_e

    .line 393
    sget v11, Lcom/htc/android/htcime/ui/SimpleWCL;->sCPPortFullWCL_WIDTH:I

    .line 400
    :goto_3
    shl-int/lit8 v6, v11, 0x1

    .line 401
    .local v6, X_GAP:I
    shl-int/lit8 v26, v6, 0x1

    .line 404
    .local v26, minWordWidth:I
    sget v37, Lcom/htc/android/htcime/ui/SimpleWCL;->sFullWCL_TOP_BOTTOM__PADDING:I

    .line 406
    .local v37, top_bottom_padding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->NORM_FGCOLOR:I

    move/from16 v29, v0

    .line 407
    .local v29, normalColor:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->HILI_BGCOLOR:I

    .line 408
    .local v13, hiliBgColor:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->HILI_FGCOLOR:I

    .line 410
    .local v14, hiliFgColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    .line 412
    .local v31, paint:Landroid/graphics/Paint;
    const/16 v23, 0x0

    .line 413
    .local v23, lineStartPos:I
    int-to-float v0, v12

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Paint;->getTextSize()F

    move-result v45

    add-float v44, v44, v45

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v44, v0

    shr-int/lit8 v44, v44, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mDescent:I

    move/from16 v45, v0

    sub-int v43, v44, v45

    .line 414
    .local v43, y:I
    const/16 v42, 0x0

    .line 415
    .local v42, x:I
    const/16 v22, 0x1

    .line 416
    .local v22, lineCount:I
    const/16 v18, 0x0

    .line 417
    .local v18, isDrawDropDown:Z
    const/16 v34, 0x0

    .line 418
    .local v34, selected:Z
    const/16 v35, 0x0

    .line 420
    .local v35, selectedItemInvisible:Z
    new-instance v33, Landroid/graphics/Rect;

    const/16 v44, 0x0

    const/16 v45, 0x0

    sub-int v46, v12, v37

    move-object/from16 v0, v33

    move/from16 v1, v44

    move/from16 v2, v37

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 422
    .local v33, selectBG:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    const/16 v44, 0x0

    const/16 v45, 0x0

    sub-int v46, v12, v37

    move/from16 v0, v44

    move/from16 v1, v37

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 423
    .local v10, drawableRect:Landroid/graphics/Rect;
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->candDraws:[Lcom/htc/android/htcime/ui/DrawingObject;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget-object v8, v44, v45

    .line 426
    .local v8, candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    const/4 v7, 0x0

    .line 429
    .local v7, cand:Ljava/lang/String;
    const/16 v19, 0x0

    .line 430
    .local v19, isEmoji:Z
    const/16 v41, 0x0

    .line 431
    .local v41, wordWidth:I
    const/16 v36, 0x0

    .line 432
    .local v36, textWidth:F
    if-nez v8, :cond_12

    .line 433
    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mWCLID:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbPressBottomBtn:Z

    move/from16 v46, v0

    move-object/from16 v0, v16

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getWCLCand(IIZ)Ljava/lang/String;

    move-result-object v7

    .line 434
    if-eqz v7, :cond_1

    .line 436
    const/16 v44, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_10

    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Character;->isDefined(C)Z

    move-result v44

    if-nez v44, :cond_10

    const/16 v19, 0x1

    .line 437
    :goto_4
    if-eqz v19, :cond_11

    .line 438
    new-instance v8, Lcom/htc/android/htcime/ui/EmojiDrawingObject;

    .end local v8           #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mApk:Lcom/htc/android/htcime/util/APKResTool;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->emojiList:Ljava/util/HashMap;

    move-object/from16 v44, v0

    const/16 v46, 0xa

    move/from16 v0, v46

    invoke-static {v7, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v44

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    invoke-direct {v8, v0, v1, v7}, Lcom/htc/android/htcime/ui/EmojiDrawingObject;-><init>(Landroid/graphics/Paint;Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    .restart local v8       #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    :goto_5
    invoke-virtual {v8}, Lcom/htc/android/htcime/ui/DrawingObject;->getWidth()F

    move-result v36

    .line 449
    const/16 v44, 0x0

    cmpl-float v44, v44, v36

    if-eqz v44, :cond_1

    .line 454
    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v44, v0

    add-int v44, v44, v6

    move/from16 v0, v44

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 457
    invoke-virtual {v8, v12}, Lcom/htc/android/htcime/ui/DrawingObject;->setCandidateAreaHeight(I)V

    .line 458
    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lcom/htc/android/htcime/ui/DrawingObject;->setCandidateAreaWidth(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->candDraws:[Lcom/htc/android/htcime/ui/DrawingObject;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v8, v44, v45

    .line 476
    :goto_6
    add-int v44, v42, v41

    move/from16 v0, v44

    move/from16 v1, v40

    if-le v0, v1, :cond_4

    .line 477
    sub-int v44, v41, v40

    const/16 v45, 0x0

    move/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v8, v0, v1}, Lcom/htc/android/htcime/ui/DrawingObject;->dealOverSize(II)V

    .line 478
    move/from16 v41, v40

    .line 479
    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lcom/htc/android/htcime/ui/DrawingObject;->setCandidateAreaWidth(I)V

    .line 487
    :cond_4
    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 488
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    add-int v44, v44, v41

    move/from16 v0, v44

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 490
    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 491
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x2

    move/from16 v0, v44

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 492
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x2

    move/from16 v0, v44

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 494
    if-nez v34, :cond_5

    const/16 v44, -0x1

    move/from16 v0, v38

    move/from16 v1, v44

    if-eq v0, v1, :cond_5

    const/16 v44, -0x1

    move/from16 v0, v39

    move/from16 v1, v44

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v33

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v44

    if-eqz v44, :cond_5

    if-eqz v32, :cond_5

    .line 497
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    .line 499
    const/16 v34, 0x1

    .line 500
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSetectedCand:Ljava/lang/String;

    .line 503
    :cond_5
    if-eqz p1, :cond_7

    .line 505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    move/from16 v44, v0

    if-nez v44, :cond_15

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    if-eqz v44, :cond_14

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 514
    :goto_7
    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    :cond_6
    :goto_8
    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v8, v0, v1, v2}, Lcom/htc/android/htcime/ui/DrawingObject;->draw(Landroid/graphics/Canvas;FF)V

    .line 533
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 536
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mRowID:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x0

    aput v46, v44, v45

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandStart:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v46, v0

    aput v46, v44, v45

    .line 538
    add-int v42, v42, v41

    .line 539
    const/16 v27, 0x0

    .line 543
    .local v27, nPageCount:I
    const/4 v15, 0x1

    .local v15, i:I
    move/from16 v28, v27

    .end local v27           #nPageCount:I
    .local v28, nPageCount:I
    :goto_9
    if-ge v15, v9, :cond_2d

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->candDraws:[Lcom/htc/android/htcime/ui/DrawingObject;

    move-object/from16 v44, v0

    aget-object v8, v44, v15

    .line 546
    if-nez v8, :cond_18

    .line 547
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mWCLID:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbPressBottomBtn:Z

    move/from16 v45, v0

    move-object/from16 v0, v16

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-interface {v0, v15, v1, v2}, Lcom/htc/android/htcime/Intf/IHTCIM;->getWCLCand(IIZ)Ljava/lang/String;

    move-result-object v7

    .line 548
    if-nez v7, :cond_8

    .line 549
    const-string v44, "SimpleWCL"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Candidate#"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " is null."

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v7, Ljava/lang/String;

    .end local v7           #cand:Ljava/lang/String;
    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 553
    .restart local v7       #cand:Ljava/lang/String;
    :cond_8
    const/16 v44, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_16

    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Character;->isDefined(C)Z

    move-result v44

    if-nez v44, :cond_16

    const/16 v19, 0x1

    .line 554
    :goto_a
    if-eqz v19, :cond_17

    .line 555
    new-instance v8, Lcom/htc/android/htcime/ui/EmojiDrawingObject;

    .end local v8           #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mApk:Lcom/htc/android/htcime/util/APKResTool;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->emojiList:Ljava/util/HashMap;

    move-object/from16 v44, v0

    const/16 v46, 0xa

    move/from16 v0, v46

    invoke-static {v7, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v44

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    invoke-direct {v8, v0, v1, v7}, Lcom/htc/android/htcime/ui/EmojiDrawingObject;-><init>(Landroid/graphics/Paint;Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    .restart local v8       #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    :goto_b
    invoke-virtual {v8}, Lcom/htc/android/htcime/ui/DrawingObject;->getWidth()F

    move-result v36

    .line 569
    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v44, v0

    add-int v44, v44, v6

    move/from16 v0, v44

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 571
    invoke-virtual {v8, v12}, Lcom/htc/android/htcime/ui/DrawingObject;->setCandidateAreaHeight(I)V

    .line 572
    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lcom/htc/android/htcime/ui/DrawingObject;->setCandidateAreaWidth(I)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->candDraws:[Lcom/htc/android/htcime/ui/DrawingObject;

    move-object/from16 v44, v0

    aput-object v8, v44, v15

    .line 588
    :goto_c
    if-eqz v21, :cond_1f

    .line 589
    add-int v44, v42, v41

    move/from16 v0, v44

    move/from16 v1, v40

    if-le v0, v1, :cond_2b

    .line 590
    sub-int v30, v41, v40

    .line 592
    .local v30, overLen:I
    if-lez v30, :cond_9

    .line 593
    const/16 v44, 0x0

    move/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v8, v0, v1}, Lcom/htc/android/htcime/ui/DrawingObject;->dealOverSize(II)V

    .line 594
    move/from16 v41, v40

    .line 595
    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/htc/android/htcime/ui/DrawingObject;->setCandidateAreaWidth(I)V

    .line 598
    :cond_9
    const/16 v42, 0x0

    .line 600
    add-int v43, v43, v12

    .line 601
    add-int/lit8 v22, v22, 0x1

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    move/from16 v44, v0

    add-int/lit8 v45, v28, 0x1

    mul-int v44, v44, v45

    move/from16 v0, v22

    move/from16 v1, v44

    if-le v0, v1, :cond_2c

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mPreTotalVisibleCand:[I

    move-object/from16 v44, v0

    add-int/lit8 v27, v28, 0x1

    .end local v28           #nPageCount:I
    .restart local v27       #nPageCount:I
    aput v15, v44, v28

    .line 615
    :goto_d
    if-nez v18, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    move/from16 v44, v0

    move/from16 v0, v22

    move/from16 v1, v44

    if-le v0, v1, :cond_1a

    .line 617
    const/16 v18, 0x1

    .line 618
    if-eqz v20, :cond_1a

    .line 718
    .end local v30           #overLen:I
    :goto_e
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/SimpleWCL;->mTotalVisibleCandPage:I

    .line 725
    if-eqz p1, :cond_b

    .line 731
    if-eqz v20, :cond_25

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getHeight()I

    move-result v44

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getViewHeight()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getWidth()I

    move-result v44

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getViewWidth()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_b

    .line 733
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v44

    move/from16 v0, v40

    move-object/from16 v1, v44

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v44

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getViewHeight()I

    move-result v45

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 736
    add-int/lit8 v22, v22, -0x1

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->requestLayout()V

    .line 765
    :cond_b
    :goto_f
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/SimpleWCL;->mRowNum:I

    .line 766
    if-eqz p1, :cond_1

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mEndDrawSubject:Lcom/htc/android/htcime/ui/EndDrawSubject;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/EndDrawSubject;->doNotify(Z)V

    goto/16 :goto_0

    .line 368
    .end local v6           #X_GAP:I
    .end local v7           #cand:Ljava/lang/String;
    .end local v8           #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    .end local v10           #drawableRect:Landroid/graphics/Rect;
    .end local v11           #h_X_GAP:I
    .end local v12           #height:I
    .end local v13           #hiliBgColor:I
    .end local v14           #hiliFgColor:I
    .end local v15           #i:I
    .end local v16           #im:Lcom/htc/android/htcime/Intf/IHTCIM;
    .end local v17           #im_id:I
    .end local v18           #isDrawDropDown:Z
    .end local v19           #isEmoji:Z
    .end local v20           #isFitViewBound:Z
    .end local v21           #isMultiLine:Z
    .end local v22           #lineCount:I
    .end local v23           #lineStartPos:I
    .end local v24           #maskApplyed:Z
    .end local v25           #maskRect:Landroid/graphics/Rect;
    .end local v26           #minWordWidth:I
    .end local v27           #nPageCount:I
    .end local v29           #normalColor:I
    .end local v31           #paint:Landroid/graphics/Paint;
    .end local v32           #select:I
    .end local v33           #selectBG:Landroid/graphics/Rect;
    .end local v34           #selected:Z
    .end local v35           #selectedItemInvisible:Z
    .end local v36           #textWidth:F
    .end local v37           #top_bottom_padding:I
    .end local v38           #touchX:I
    .end local v39           #touchY:I
    .end local v40           #width:I
    .end local v41           #wordWidth:I
    .end local v42           #x:I
    .end local v43           #y:I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getViewHeight()I

    move-result v44

    goto/16 :goto_1

    .line 371
    .restart local v12       #height:I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getViewWidth()I

    move-result v40

    goto/16 :goto_2

    .line 395
    .restart local v11       #h_X_GAP:I
    .restart local v16       #im:Lcom/htc/android/htcime/Intf/IHTCIM;
    .restart local v17       #im_id:I
    .restart local v20       #isFitViewBound:Z
    .restart local v21       #isMultiLine:Z
    .restart local v24       #maskApplyed:Z
    .restart local v25       #maskRect:Landroid/graphics/Rect;
    .restart local v32       #select:I
    .restart local v38       #touchX:I
    .restart local v39       #touchY:I
    .restart local v40       #width:I
    :cond_e
    sget v11, Lcom/htc/android/htcime/ui/SimpleWCL;->sCPLandFullWCL_WIDTH:I

    goto/16 :goto_3

    .line 398
    :cond_f
    const/16 v11, 0xc

    goto/16 :goto_3

    .line 436
    .restart local v6       #X_GAP:I
    .restart local v7       #cand:Ljava/lang/String;
    .restart local v8       #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    .restart local v10       #drawableRect:Landroid/graphics/Rect;
    .restart local v13       #hiliBgColor:I
    .restart local v14       #hiliFgColor:I
    .restart local v18       #isDrawDropDown:Z
    .restart local v19       #isEmoji:Z
    .restart local v22       #lineCount:I
    .restart local v23       #lineStartPos:I
    .restart local v26       #minWordWidth:I
    .restart local v29       #normalColor:I
    .restart local v31       #paint:Landroid/graphics/Paint;
    .restart local v33       #selectBG:Landroid/graphics/Rect;
    .restart local v34       #selected:Z
    .restart local v35       #selectedItemInvisible:Z
    .restart local v36       #textWidth:F
    .restart local v37       #top_bottom_padding:I
    .restart local v41       #wordWidth:I
    .restart local v42       #x:I
    .restart local v43       #y:I
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 444
    :cond_11
    new-instance v8, Lcom/htc/android/htcime/ui/StringDrawingObject;

    .end local v8           #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    move-object/from16 v0, v31

    invoke-direct {v8, v0, v7, v7}, Lcom/htc/android/htcime/ui/StringDrawingObject;-><init>(Landroid/graphics/Paint;Ljava/lang/Object;Ljava/lang/String;)V

    .restart local v8       #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    goto/16 :goto_5

    .line 463
    :cond_12
    invoke-virtual {v8}, Lcom/htc/android/htcime/ui/DrawingObject;->getCandStr()Ljava/lang/String;

    move-result-object v7

    .line 464
    const/16 v44, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_13

    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Character;->isDefined(C)Z

    move-result v44

    if-nez v44, :cond_13

    const/16 v19, 0x1

    .line 465
    :goto_10
    invoke-virtual {v8}, Lcom/htc/android/htcime/ui/DrawingObject;->getCandidateAreaWidth()I

    move-result v41

    goto/16 :goto_6

    .line 464
    :cond_13
    const/16 v19, 0x0

    goto :goto_10

    .line 511
    :cond_14
    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 512
    new-instance v44, Landroid/graphics/RectF;

    move-object/from16 v0, v44

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float v0, v11

    move/from16 v45, v0

    int-to-float v0, v11

    move/from16 v46, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 518
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->normalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    if-eqz v44, :cond_6

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->normalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->normalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 553
    .restart local v15       #i:I
    .restart local v28       #nPageCount:I
    :cond_16
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 564
    :cond_17
    new-instance v8, Lcom/htc/android/htcime/ui/StringDrawingObject;

    .end local v8           #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    move-object/from16 v0, v31

    invoke-direct {v8, v0, v7, v7}, Lcom/htc/android/htcime/ui/StringDrawingObject;-><init>(Landroid/graphics/Paint;Ljava/lang/Object;Ljava/lang/String;)V

    .restart local v8       #candDraw:Lcom/htc/android/htcime/ui/DrawingObject;
    goto/16 :goto_b

    .line 576
    :cond_18
    invoke-virtual {v8}, Lcom/htc/android/htcime/ui/DrawingObject;->getCandStr()Ljava/lang/String;

    move-result-object v7

    .line 577
    const/16 v44, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_19

    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Character;->isDefined(C)Z

    move-result v44

    if-nez v44, :cond_19

    const/16 v19, 0x1

    .line 578
    :goto_11
    invoke-virtual {v8}, Lcom/htc/android/htcime/ui/DrawingObject;->getCandidateAreaWidth()I

    move-result v41

    goto/16 :goto_c

    .line 577
    :cond_19
    const/16 v19, 0x0

    goto :goto_11

    .line 622
    .end local v28           #nPageCount:I
    .restart local v27       #nPageCount:I
    .restart local v30       #overLen:I
    :cond_1a
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v44, v0

    add-int v44, v44, v12

    move/from16 v0, v44

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 623
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v44, v0

    add-int v44, v44, v12

    move/from16 v0, v44

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 652
    .end local v30           #overLen:I
    :goto_12
    move/from16 v0, v42

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 654
    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    add-int v44, v44, v41

    move/from16 v0, v44

    move-object/from16 v1, v33

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 657
    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 658
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x2

    move/from16 v0, v44

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 659
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x2

    move/from16 v0, v44

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 661
    if-nez v34, :cond_1b

    const/16 v44, -0x1

    move/from16 v0, v38

    move/from16 v1, v44

    if-eq v0, v1, :cond_1b

    const/16 v44, -0x1

    move/from16 v0, v39

    move/from16 v1, v44

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, v33

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v44

    if-eqz v44, :cond_1b

    move/from16 v0, v32

    if-eq v15, v0, :cond_1b

    .line 664
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    .line 666
    const/16 v34, 0x1

    .line 667
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSetectedCand:Ljava/lang/String;

    .line 670
    :cond_1b
    if-eqz p1, :cond_1e

    .line 671
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v44

    if-nez v44, :cond_23

    .line 673
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    move/from16 v44, v0

    move/from16 v0, v44

    if-ne v15, v0, :cond_22

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    if-eqz v44, :cond_21

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 683
    :goto_13
    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 701
    :cond_1c
    :goto_14
    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v8, v0, v1, v2}, Lcom/htc/android/htcime/ui/DrawingObject;->draw(Landroid/graphics/Canvas;FF)V

    .line 702
    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 711
    :cond_1d
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mRowID:[I

    move-object/from16 v44, v0

    add-int/lit8 v45, v22, -0x1

    aput v45, v44, v15

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandStart:[I

    move-object/from16 v44, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v45, v0

    aput v45, v44, v15

    .line 713
    add-int v42, v42, v41

    .line 543
    :cond_1e
    add-int/lit8 v15, v15, 0x1

    move/from16 v28, v27

    .end local v27           #nPageCount:I
    .restart local v28       #nPageCount:I
    goto/16 :goto_9

    .line 627
    :cond_1f
    add-int v44, v42, v41

    mul-int v45, v22, v40

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_2b

    .line 628
    sub-int v30, v41, v40

    .line 630
    .restart local v30       #overLen:I
    if-lez v30, :cond_20

    .line 631
    const/16 v44, 0x0

    move/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v8, v0, v1}, Lcom/htc/android/htcime/ui/DrawingObject;->dealOverSize(II)V

    .line 632
    move/from16 v41, v40

    .line 633
    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lcom/htc/android/htcime/ui/DrawingObject;->setCandidateAreaWidth(I)V

    .line 635
    :cond_20
    mul-int v42, v22, v40

    .line 636
    add-int/lit8 v22, v22, 0x1

    .line 645
    const/16 v18, 0x1

    .line 646
    if-eqz v20, :cond_2b

    move/from16 v27, v28

    .line 647
    .end local v28           #nPageCount:I
    .restart local v27       #nPageCount:I
    goto/16 :goto_e

    .line 680
    .end local v30           #overLen:I
    :cond_21
    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 681
    new-instance v44, Landroid/graphics/RectF;

    move-object/from16 v0, v44

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float v0, v11

    move/from16 v45, v0

    int-to-float v0, v11

    move/from16 v46, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_13

    .line 687
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->normalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    if-eqz v44, :cond_1c

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->normalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->normalDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_14

    .line 704
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    move/from16 v44, v0

    move/from16 v0, v44

    if-ne v15, v0, :cond_24

    .line 705
    const/16 v35, 0x1

    .line 707
    :cond_24
    if-nez v24, :cond_1d

    .line 708
    const/16 v24, 0x1

    goto/16 :goto_15

    .line 740
    :cond_25
    if-nez v21, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getWidth()I

    move-result v44

    mul-int v45, v22, v40

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_26

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v44

    mul-int v45, v22, v40

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v44

    move-object/from16 v0, v44

    iput v12, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->requestLayout()V

    goto/16 :goto_f

    .line 748
    :cond_26
    if-eqz v21, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getHeight()I

    move-result v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mLastLineMaskWidth:I

    move/from16 v44, v0

    const/16 v46, -0x1

    move/from16 v0, v44

    move/from16 v1, v46

    if-le v0, v1, :cond_27

    add-int/lit8 v44, v22, 0x1

    :goto_16
    mul-int v44, v44, v12

    move/from16 v0, v45

    move/from16 v1, v44

    if-eq v0, v1, :cond_b

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v44

    move/from16 v0, v40

    move-object/from16 v1, v44

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 755
    sget-boolean v44, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v44, :cond_29

    .line 756
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    move/from16 v45, v0

    rem-int v45, v22, v45

    sub-int v5, v44, v45

    .line 757
    .local v5, ExtraLine:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mLastLineMaskWidth:I

    move/from16 v44, v0

    const/16 v46, -0x1

    move/from16 v0, v44

    move/from16 v1, v46

    if-le v0, v1, :cond_28

    add-int/lit8 v44, v22, 0x1

    :goto_17
    mul-int v44, v44, v12

    move/from16 v0, v44

    move-object/from16 v1, v45

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 761
    .end local v5           #ExtraLine:I
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->requestLayout()V

    goto/16 :goto_f

    :cond_27
    move/from16 v44, v22

    .line 748
    goto :goto_16

    .line 757
    .restart local v5       #ExtraLine:I
    :cond_28
    add-int v44, v22, v5

    goto :goto_17

    .line 760
    .end local v5           #ExtraLine:I
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/SimpleWCL;->mLastLineMaskWidth:I

    move/from16 v44, v0

    const/16 v46, -0x1

    move/from16 v0, v44

    move/from16 v1, v46

    if-le v0, v1, :cond_2a

    add-int/lit8 v44, v22, 0x1

    :goto_19
    mul-int v44, v44, v12

    move/from16 v0, v44

    move-object/from16 v1, v45

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_18

    :cond_2a
    move/from16 v44, v22

    goto :goto_19

    .end local v27           #nPageCount:I
    .restart local v28       #nPageCount:I
    :cond_2b
    move/from16 v27, v28

    .end local v28           #nPageCount:I
    .restart local v27       #nPageCount:I
    goto/16 :goto_12

    .end local v27           #nPageCount:I
    .restart local v28       #nPageCount:I
    .restart local v30       #overLen:I
    :cond_2c
    move/from16 v27, v28

    .end local v28           #nPageCount:I
    .restart local v27       #nPageCount:I
    goto/16 :goto_d

    .end local v27           #nPageCount:I
    .end local v30           #overLen:I
    .restart local v28       #nPageCount:I
    :cond_2d
    move/from16 v27, v28

    .end local v28           #nPageCount:I
    .restart local v27       #nPageCount:I
    goto/16 :goto_e
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 781
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 782
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewHeight:I

    .line 783
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewWidth:I

    .line 787
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->normalDrawable:Landroid/graphics/drawable/Drawable;

    .line 788
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    .line 790
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 834
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 835
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 839
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->setMeasuredDimension(II)V

    .line 844
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 798
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 799
    .local v1, ex:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 803
    .local v2, ey:I
    packed-switch v0, :pswitch_data_0

    .line 817
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 805
    :pswitch_0
    iget v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    if-lez v3, :cond_0

    .line 806
    iput v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchX:I

    .line 807
    iput v2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchY:I

    .line 808
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    .line 809
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->postInvalidate()V

    goto :goto_0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public preDraw()V
    .locals 1

    .prologue
    .line 1232
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    if-gtz v0, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1237
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/SimpleWCL;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setCandidates([Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "candidates"

    .prologue
    const/4 v4, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->clear()V

    .line 259
    iget-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    iget v2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mWCLID:I

    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbPressBottomBtn:Z

    invoke-interface {v1, v2, v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getWCLCount(IZ)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    .line 264
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewWidth:I

    iget v2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewHeight:I

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 267
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/SimpleWCL;->invalidate(Landroid/graphics/Rect;)V

    .line 272
    const/4 v1, 0x1

    return v1
.end method

.method public setColorSet(III)V
    .locals 1
    .parameter "normal"
    .parameter "hiliBG"
    .parameter "hiliFG"

    .prologue
    .line 1220
    iput p1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->NORM_FGCOLOR:I

    .line 1221
    iput p2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->HILI_BGCOLOR:I

    .line 1222
    iput p3, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->HILI_FGCOLOR:I

    .line 1224
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1229
    :cond_0
    return-void
.end method

.method public setDrawableSet(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "normalBG"
    .parameter "hiliBG"

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->normalDrawable:Landroid/graphics/drawable/Drawable;

    .line 1216
    iput-object p2, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->hiliDrawable:Landroid/graphics/drawable/Drawable;

    .line 1217
    return-void
.end method

.method public setEndDrawListenner(Ljava/util/Observer;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mEndDrawSubject:Lcom/htc/android/htcime/ui/EndDrawSubject;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/EndDrawSubject;->addObserver(Ljava/util/Observer;)V

    .line 1212
    return-void
.end method

.method public setFitViewBound(Z)V
    .locals 0
    .parameter "isFitViewBound"

    .prologue
    .line 875
    iput-boolean p1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbFitViewBound:Z

    .line 876
    return-void
.end method

.method public setLastLineMaskWidth(I)V
    .locals 2
    .parameter "lastLineMaskWidth"

    .prologue
    .line 1284
    iput p1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mLastLineMaskWidth:I

    .line 1287
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mLastLineMaskWidth:I

    if-ne v0, v1, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1291
    :goto_0
    return-void

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mMaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mMaskRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method public setPressAtBottomLine(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1137
    iput-boolean p1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbPressBottomBtn:Z

    .line 1138
    return-void
.end method

.method public setSelectedIndx(I)V
    .locals 1
    .parameter "indx"

    .prologue
    .line 1068
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mCandcount:I

    if-lt p1, v0, :cond_1

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchY:I

    iput v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchX:I

    .line 1074
    iput p1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    .line 1075
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->postInvalidate()V

    goto :goto_0
.end method

.method public setUnSelected()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1082
    iget v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    if-ne v0, v1, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1086
    :cond_0
    iput v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchY:I

    iput v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mTouchX:I

    .line 1087
    iput v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mSelectIndex:I

    .line 1088
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->postInvalidate()V

    goto :goto_0
.end method

.method public setViewHeight(I)V
    .locals 0
    .parameter "viewHeight"

    .prologue
    .line 1105
    iput p1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewHeight:I

    .line 1106
    return-void
.end method

.method public setViewWidth(I)V
    .locals 0
    .parameter "viewWidth"

    .prologue
    .line 1122
    iput p1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewWidth:I

    .line 1123
    return-void
.end method

.method public setVisibleLineNum(I)V
    .locals 2
    .parameter "visibleLineNum"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1032
    iput p1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    .line 1033
    if-le p1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbMultiLine:Z

    .line 1035
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbMultiLine:Z

    if-eqz v0, :cond_0

    .line 1036
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbFitViewBound:Z

    .line 1040
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1033
    goto :goto_0
.end method

.method public setWCLID(I)V
    .locals 0
    .parameter "idx"

    .prologue
    .line 1130
    iput p1, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mWCLID:I

    .line 1131
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 9
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 1243
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    move-object v5, p2

    check-cast v5, [Ljava/lang/Object;

    .line 1245
    .local v5, param:[Ljava/lang/Object;
    aget-object v6, v5, v7

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1246
    .local v0, isStartScroll:Z
    aget-object v6, v5, v1

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v8, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    add-int/2addr v6, v8

    add-int/lit8 v3, v6, -0x1

    .line 1248
    .local v3, maskRow:I
    iget v6, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewHeight:I

    iget v8, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mVisibleLineNum:I

    div-int v2, v6, v8

    .line 1249
    .local v2, lineHeight:I
    mul-int v4, v3, v2

    .line 1258
    .local v4, maskTop:I
    iget-boolean v6, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mbMultiLine:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mMaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-eq v6, v4, :cond_0

    iget v6, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewWidth:I

    if-nez v6, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    iget-object v6, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mMaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v6, v4, :cond_5

    .line 1262
    .local v1, isUpward:Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1263
    :cond_4
    iget-object v6, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mMaskRect:Landroid/graphics/Rect;

    iget v7, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewWidth:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1264
    iget-object v6, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mMaskRect:Landroid/graphics/Rect;

    iget v7, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mViewWidth:I

    iget v8, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mLastLineMaskWidth:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1265
    iget-object v6, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mMaskRect:Landroid/graphics/Rect;

    mul-int v7, v3, v2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1266
    iget-object v6, p0, Lcom/htc/android/htcime/ui/SimpleWCL;->mMaskRect:Landroid/graphics/Rect;

    add-int/lit8 v7, v3, 0x1

    mul-int/2addr v7, v2

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1267
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->invalidate()V

    goto :goto_0

    .end local v1           #isUpward:Z
    :cond_5
    move v1, v7

    .line 1260
    goto :goto_1
.end method
