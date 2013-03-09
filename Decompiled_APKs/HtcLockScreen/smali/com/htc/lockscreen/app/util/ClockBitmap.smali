.class public Lcom/htc/lockscreen/app/util/ClockBitmap;
.super Ljava/lang/Object;
.source "ClockBitmap.java"


# static fields
.field public static final LOG_PREFIX:Ljava/lang/String; = "ClockBitmap"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCalendar:Landroid/text/format/Time;

.field private mContext:Landroid/content/Context;

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 28
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 29
    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 30
    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 31
    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mDial:Landroid/graphics/drawable/Drawable;

    .line 33
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mCalendar:Landroid/text/format/Time;

    .line 34
    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    const/high16 v5, 0x4270

    .line 37
    iget-object v3, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 39
    iget-object v3, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 40
    .local v0, hour:I
    iget-object v3, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 41
    .local v1, minute:I
    iget-object v3, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 43
    .local v2, second:I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mMinutes:F

    .line 44
    int-to-float v3, v0

    iget v4, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mHour:F

    .line 45
    return-void
.end method


# virtual methods
.method public getClockBitmap(Z)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "updateTime"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/htc/lockscreen/app/util/ClockBitmap;->onTimeChanged()V

    .line 50
    :cond_0
    iget-object v4, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 51
    .local v3, width:I
    iget-object v4, p0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 53
    .local v2, height:I
    if-lez v3, :cond_1

    if-gtz v2, :cond_2

    .line 54
    :cond_1
    const-string v4, "ClockBitmap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildCache error!!! width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 57
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    .local v0, cacheBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    .local v1, cacheCanvas:Landroid/graphics/Canvas;
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/app/util/ClockBitmap;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 65
    const-string v12, "ClockBitmap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDraw width:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " height:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 68
    .local v2, availableWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 69
    .local v1, availableHeight:I
    const-string v12, "ClockBitmap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDraw availableWidth:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " availableHeight:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    div-int/lit8 v10, v2, 0x2

    .line 71
    .local v10, x:I
    div-int/lit8 v11, v1, 0x2

    .line 73
    .local v11, y:I
    const/4 v8, 0x0

    .line 83
    .local v8, scaled:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 84
    .local v3, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 85
    .local v9, w:I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 86
    .local v5, h:I
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v10, v12

    div-int/lit8 v13, v5, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v10

    div-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v11

    invoke-virtual {v3, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    const-string v12, "ClockBitmap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDraw w:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " h:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v12, "ClockBitmap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDraw x:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " y:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mHour:F

    const/high16 v13, 0x4140

    div-float/2addr v12, v13

    const/high16 v13, 0x43b4

    mul-float/2addr v12, v13

    int-to-float v13, v10

    int-to-float v14, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 95
    const-string v12, "ClockBitmap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDraw mHour:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mHour:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 97
    .local v6, hourHand:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 98
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 99
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v10, v12

    div-int/lit8 v13, v5, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v10

    div-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v11

    invoke-virtual {v6, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mMinutes:F

    const/high16 v13, 0x4270

    div-float/2addr v12, v13

    const/high16 v13, 0x43b4

    mul-float/2addr v12, v13

    int-to-float v13, v10

    int-to-float v14, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 105
    const-string v12, "ClockBitmap"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDraw mMinutes:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mMinutes:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 107
    .local v7, minuteHand:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 108
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 109
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v10, v12

    div-int/lit8 v13, v5, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v10

    div-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v11

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/app/util/ClockBitmap;->mDial:Landroid/graphics/drawable/Drawable;

    .line 114
    .local v4, dial:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 115
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 116
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v10, v12

    div-int/lit8 v13, v5, 0x2

    sub-int v13, v11, v13

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v10

    div-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v11

    invoke-virtual {v4, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    if-eqz v8, :cond_0

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 122
    :cond_0
    return-void
.end method
