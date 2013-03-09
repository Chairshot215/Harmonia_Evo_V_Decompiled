.class public Lcom/htc/lockscreen/app/widget/AlarmAnime;
.super Landroid/view/View;
.source "AlarmAnime.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "AlarmAnime"

.field private static final s_frameDelay:I = 0x32

.field private static final s_frame_size:I = 0x28

.field private static final s_moves:[I

.field private static final s_rotations:[I


# instance fields
.field private mAlarmBody:Landroid/graphics/drawable/Drawable;

.field private mAlarmDif:I

.field private mAlarmShadow:Landroid/graphics/drawable/Drawable;

.field private mFrame:I

.field private mLayout:Landroid/view/ViewGroup;

.field mOld:I

.field mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->s_rotations:[I

    .line 38
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->s_moves:[I

    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
        0xfbt 0xfft 0xfft 0xfft
        0xf9t 0xfft 0xfft 0xfft
        0xf7t 0xfft 0xfft 0xfft
        0xf7t 0xfft 0xfft 0xfft
        0xf9t 0xfft 0xfft 0xfft
        0xfbt 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
        0xfct 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xf6t 0xfft 0xfft 0xfft
        0xf6t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfat 0xfft 0xfft 0xfft
        0xfet 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 38
    :array_1
    .array-data 0x4
        0xe0t 0xfft 0xfft 0xfft
        0xd8t 0xfft 0xfft 0xfft
        0xf6t 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xfbt 0xfft 0xfft 0xfft
        0xf6t 0xfft 0xfft 0xfft
        0xect 0xfft 0xfft 0xfft
        0xd8t 0xfft 0xfft 0xfft
        0xe7t 0xfft 0xfft 0xfft
        0xfbt 0xfft 0xfft 0xfft
        0xfbt 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0xf6t 0xfft 0xfft 0xfft
        0xect 0xfft 0xfft 0xfft
        0xe0t 0xfft 0xfft 0xfft
        0xf6t 0xfft 0xfft 0xfft
        0xf8t 0xfft 0xfft 0xfft
        0xfbt 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xf6t 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfbt 0xfft 0xfft 0xfft
        0xf6t 0xfft 0xfft 0xfft
        0xect 0xfft 0xfft 0xfft
        0xe0t 0xfft 0xfft 0xfft
        0xfbt 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xf6t 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfbt 0xfft 0xfft 0xfft
        0xf6t 0xfft 0xfft 0xfft
        0xect 0xfft 0xfft 0xfft
        0xe0t 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mAlarmDif:I

    .line 27
    iput v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mFrame:I

    .line 50
    new-instance v0, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;-><init>(Lcom/htc/lockscreen/app/widget/AlarmAnime;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mUIHandler:Landroid/os/Handler;

    .line 91
    const/16 v0, -0x64

    iput v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mOld:I

    .line 64
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/AlarmAnime;->initView()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mAlarmDif:I

    .line 27
    iput v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mFrame:I

    .line 50
    new-instance v0, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;-><init>(Lcom/htc/lockscreen/app/widget/AlarmAnime;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mUIHandler:Landroid/os/Handler;

    .line 91
    const/16 v0, -0x64

    iput v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mOld:I

    .line 69
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/AlarmAnime;->initView()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mAlarmDif:I

    .line 27
    iput v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mFrame:I

    .line 50
    new-instance v0, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/widget/AlarmAnime$1;-><init>(Lcom/htc/lockscreen/app/widget/AlarmAnime;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mUIHandler:Landroid/os/Handler;

    .line 91
    const/16 v0, -0x64

    iput v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mOld:I

    .line 74
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/AlarmAnime;->initView()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/app/widget/AlarmAnime;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mFrame:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/lockscreen/app/widget/AlarmAnime;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mFrame:I

    return p1
.end method


# virtual methods
.method public drawBody(II)V
    .locals 2
    .parameter "rotation"
    .parameter "move"

    .prologue
    .line 108
    const-string v0, "AlarmAnime"

    const-string v1, "drawBody"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public drawShadow(II)V
    .locals 2
    .parameter "rotation"
    .parameter "move"

    .prologue
    .line 113
    const-string v0, "AlarmAnime"

    const-string v1, "drawShadow"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public initBitmap()V
    .locals 4

    .prologue
    .line 118
    const-string v2, "AlarmAnime"

    const-string v3, "initBitmap"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 124
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mAlarmBody:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 125
    new-instance v0, Lcom/htc/lockscreen/app/util/ClockBitmap;

    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/htc/lockscreen/app/util/ClockBitmap;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, clockBitmap:Lcom/htc/lockscreen/app/util/ClockBitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/lockscreen/app/util/ClockBitmap;->getClockBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mAlarmBody:Landroid/graphics/drawable/Drawable;

    .line 129
    .end local v0           #clockBitmap:Lcom/htc/lockscreen/app/util/ClockBitmap;
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mAlarmShadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 130
    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mAlarmShadow:Landroid/graphics/drawable/Drawable;

    .line 132
    :cond_1
    return-void
.end method

.method public initView()V
    .locals 3

    .prologue
    .line 78
    const-string v1, "AlarmAnime"

    const-string v2, "initView"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mAlarmDif:I

    .line 86
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/AlarmAnime;->initBitmap()V

    .line 89
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 136
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 139
    sget-object v12, Lcom/htc/lockscreen/app/widget/AlarmAnime;->s_rotations:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mFrame:I

    aget v6, v12, v13

    .line 140
    .local v6, rotation:I
    sget-object v12, Lcom/htc/lockscreen/app/widget/AlarmAnime;->s_moves:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mFrame:I

    aget v5, v12, v13

    .line 142
    .local v5, move:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/app/widget/AlarmAnime;->getWidth()I

    move-result v2

    .line 143
    .local v2, availableWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/app/widget/AlarmAnime;->getHeight()I

    move-result v1

    .line 145
    .local v1, availableHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mAlarmBody:Landroid/graphics/drawable/Drawable;

    .line 146
    .local v3, body:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mAlarmShadow:Landroid/graphics/drawable/Drawable;

    .line 147
    .local v7, shadow:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 148
    .local v4, bodyH:I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 151
    .local v8, shadowH:I
    div-int/lit8 v10, v2, 0x2

    .line 152
    .local v10, x:I
    sub-int v12, v4, v5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mAlarmDif:I

    sub-int v11, v12, v13

    .line 155
    .local v11, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    int-to-float v12, v6

    int-to-float v13, v10

    int-to-float v14, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 158
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 160
    .local v9, w:I
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v10, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mAlarmDif:I

    sub-int v13, v4, v13

    sub-int v13, v11, v13

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v14, v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mAlarmDif:I

    add-int/2addr v15, v11

    invoke-virtual {v3, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 161
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 165
    neg-int v12, v6

    int-to-float v12, v12

    int-to-float v13, v10

    int-to-float v14, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 167
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 170
    div-int/lit8 v12, v9, 0x2

    sub-int v12, v10, v12

    div-int/lit8 v13, v9, 0x2

    add-int/2addr v13, v10

    add-int v14, v11, v8

    invoke-virtual {v7, v12, v11, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 171
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 173
    return-void
.end method

.method public startAnime()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 93
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    return-void
.end method

.method public stopAnime()V
    .locals 3

    .prologue
    const/16 v2, -0x64

    .line 100
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    iget v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mOld:I

    if-eq v0, v2, :cond_0

    .line 102
    iget v0, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mOld:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 103
    iput v2, p0, Lcom/htc/lockscreen/app/widget/AlarmAnime;->mOld:I

    .line 105
    :cond_0
    return-void
.end method
