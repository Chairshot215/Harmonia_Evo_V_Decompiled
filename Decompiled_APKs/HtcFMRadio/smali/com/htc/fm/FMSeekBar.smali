.class public Lcom/htc/fm/FMSeekBar;
.super Landroid/view/View;
.source "FMSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/FMSeekBar$SyncValues;,
        Lcom/htc/fm/FMSeekBar$SyncInterval;,
        Lcom/htc/fm/FMSeekBar$Initializer;
    }
.end annotation


# static fields
.field public static final DPAD_BACK:Z = false

.field public static final DPAD_NEXT:Z = true

.field private static final HIGHLIGHT_DEFAULT_HEIGHT:I = 0x33

.field private static SAVE_MOVE_TIME_INTERVAL:I


# instance fields
.field private mDrawThumb:Landroid/graphics/drawable/Drawable;

.field private mDrawThumbPress:Landroid/graphics/drawable/Drawable;

.field private mDrawThumbRect:Landroid/graphics/Rect;

.field public mFreq:I

.field private mFreqArray:[I

.field private mHighLight:Landroid/graphics/drawable/Drawable;

.field private mHighLightBottom:I

.field private mHighLightDisable:Landroid/graphics/drawable/Drawable;

.field private mHighLightHeight:I

.field private mHighLightRect:Landroid/graphics/Rect;

.field private mHighLightTop:I

.field private mIsEnabled:Z

.field private mLastMoveX:I

.field private mListener:Lcom/htc/fm/FMSeekBarTouchListener;

.field private mOnTouchDownTime:J

.field private mPixelArray:[I

.field private mPixelDelta:I

.field private mPressed:Z

.field private mSyncHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/fm/FMSeekBar$SyncInterval;",
            "Lcom/htc/fm/FMSeekBar$SyncValues;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbBottom:I

.field private mThumbTop:I

.field private mTouchableArea:Landroid/graphics/Rect;

.field private prevMoveTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/16 v0, 0x64

    sput v0, Lcom/htc/fm/FMSeekBar;->SAVE_MOVE_TIME_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/fm/FMSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fm/FMSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbRect:Landroid/graphics/Rect;

    .line 33
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Lcom/htc/fm/FMSeekBar;->mHighLightRect:Landroid/graphics/Rect;

    .line 39
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/fm/FMSeekBar;->mPixelDelta:I

    .line 41
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/fm/FMSeekBar;->mPressed:Z

    .line 46
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/htc/fm/FMSeekBar;->mSyncHashMap:Ljava/util/HashMap;

    .line 142
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/fm/FMSeekBar;->mLastMoveX:I

    .line 144
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/htc/fm/FMSeekBar;->mOnTouchDownTime:J

    .line 145
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/htc/fm/FMSeekBar;->prevMoveTime:J

    .line 235
    const/4 v9, -0x1

    iput v9, p0, Lcom/htc/fm/FMSeekBar;->mFreq:I

    .line 349
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/fm/FMSeekBar;->mTouchableArea:Landroid/graphics/Rect;

    .line 60
    invoke-virtual {p0}, Lcom/htc/fm/FMSeekBar;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/htc/fm/R$styleable;->FMSeekBar:[I

    invoke-virtual {v9, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 62
    .local v1, attrArray:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    const/16 v10, 0x33

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/htc/fm/FMSeekBar;->mHighLightHeight:I

    .line 64
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/fm/FMSeekBar;->mFreqArray:[I

    .line 65
    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 67
    .local v2, frequencesId:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/htc/fm/FMSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    iput-object v9, p0, Lcom/htc/fm/FMSeekBar;->mFreqArray:[I

    .line 71
    :cond_0
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/fm/FMSeekBar;->mPixelArray:[I

    .line 72
    const/4 v9, 0x2

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 74
    .local v5, pixelsId:I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/htc/fm/FMSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    iput-object v9, p0, Lcom/htc/fm/FMSeekBar;->mPixelArray:[I

    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 80
    .local v0, allSyncValues:[Lcom/htc/fm/FMSeekBar$SyncValues;
    iget-object v9, p0, Lcom/htc/fm/FMSeekBar;->mPixelArray:[I

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/htc/fm/FMSeekBar;->mFreqArray:[I

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/htc/fm/FMSeekBar;->mPixelArray:[I

    array-length v9, v9

    iget-object v10, p0, Lcom/htc/fm/FMSeekBar;->mFreqArray:[I

    array-length v10, v10

    if-eq v9, v10, :cond_3

    .line 82
    :cond_2
    const-string v9, "FMSeekBar"

    const-string v10, "[FMSeekBar] Incorrect data."

    invoke-static {v9, v10}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/htc/fm/FMSeekBar;->setDefaultData()V

    .line 86
    :cond_3
    iget-object v9, p0, Lcom/htc/fm/FMSeekBar;->mFreqArray:[I

    array-length v9, v9

    new-array v0, v9, [Lcom/htc/fm/FMSeekBar$SyncValues;

    .line 87
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v9, p0, Lcom/htc/fm/FMSeekBar;->mFreqArray:[I

    array-length v9, v9

    if-ge v3, v9, :cond_4

    .line 88
    new-instance v6, Lcom/htc/fm/FMSeekBar$SyncValues;

    iget-object v9, p0, Lcom/htc/fm/FMSeekBar;->mFreqArray:[I

    aget v9, v9, v3

    iget-object v10, p0, Lcom/htc/fm/FMSeekBar;->mPixelArray:[I

    aget v10, v10, v3

    invoke-direct {v6, p0, v9, v10}, Lcom/htc/fm/FMSeekBar$SyncValues;-><init>(Lcom/htc/fm/FMSeekBar;II)V

    .line 90
    .local v6, syncValue:Lcom/htc/fm/FMSeekBar$SyncValues;
    aput-object v6, v0, v3

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .end local v6           #syncValue:Lcom/htc/fm/FMSeekBar$SyncValues;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/fm/FMUtils;->useThemeChange(Landroid/content/res/Resources;)Z

    move-result v8

    .line 95
    .local v8, useThemeChange:Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "indicator_rest"

    const v11, 0x7f02005a

    invoke-static {p1, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    .line 99
    iget-object v9, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 100
    .local v7, thumbWidth:I
    div-int/lit8 v9, v7, 0x2

    iput v9, p0, Lcom/htc/fm/FMSeekBar;->mPixelDelta:I

    .line 102
    if-eqz v8, :cond_7

    .line 103
    const-string v9, "indicator_press"

    invoke-static {p1, v9}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbPress:Landroid/graphics/drawable/Drawable;

    .line 113
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020042

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/fm/FMSeekBar;->mHighLight:Landroid/graphics/drawable/Drawable;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020043

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/fm/FMSeekBar;->mHighLightDisable:Landroid/graphics/drawable/Drawable;

    .line 118
    iget-object v9, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_5

    .line 119
    iget-object v9, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 120
    :cond_5
    iget-object v9, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbPress:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_6

    .line 121
    iget-object v9, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbPress:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 123
    :cond_6
    iget-object v9, p0, Lcom/htc/fm/FMSeekBar;->mHighLight:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 124
    iget-object v9, p0, Lcom/htc/fm/FMSeekBar;->mHighLightDisable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 125
    new-instance v4, Ljava/lang/Thread;

    new-instance v9, Lcom/htc/fm/FMSeekBar$Initializer;

    invoke-direct {v9, p0, v0}, Lcom/htc/fm/FMSeekBar$Initializer;-><init>(Lcom/htc/fm/FMSeekBar;[Lcom/htc/fm/FMSeekBar$SyncValues;)V

    invoke-direct {v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 126
    .local v4, initializer:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 127
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/htc/fm/FMSeekBar;->init(Z)V

    .line 128
    return-void

    .line 107
    .end local v4           #initializer:Ljava/lang/Thread;
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "indicator_press"

    const v11, 0x7f020059

    invoke-static {p1, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbPress:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/htc/fm/FMSeekBar;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar;->mSyncHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private getFreq(I)I
    .locals 7
    .parameter "pixel"

    .prologue
    const/4 v6, 0x0

    .line 505
    const/4 v4, 0x0

    .line 507
    .local v4, values:Lcom/htc/fm/FMSeekBar$SyncValues;
    new-instance v1, Lcom/htc/fm/FMSeekBar$SyncInterval;

    int-to-float v5, p1

    invoke-direct {v1, v5}, Lcom/htc/fm/FMSeekBar$SyncInterval;-><init>(F)V

    .line 508
    .local v1, interval:Lcom/htc/fm/FMSeekBar$SyncInterval;
    iget-object v5, p0, Lcom/htc/fm/FMSeekBar;->mSyncHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/fm/FMSeekBar$SyncInterval;

    .line 509
    .local v3, syncInterval:Lcom/htc/fm/FMSeekBar$SyncInterval;
    invoke-virtual {v1, v3}, Lcom/htc/fm/FMSeekBar$SyncInterval;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 510
    iget-object v5, p0, Lcom/htc/fm/FMSeekBar;->mSyncHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #values:Lcom/htc/fm/FMSeekBar$SyncValues;
    check-cast v4, Lcom/htc/fm/FMSeekBar$SyncValues;

    .line 515
    .end local v3           #syncInterval:Lcom/htc/fm/FMSeekBar$SyncInterval;
    .restart local v4       #values:Lcom/htc/fm/FMSeekBar$SyncValues;
    :cond_1
    if-eqz v4, :cond_2

    .line 516
    invoke-virtual {v4, p1}, Lcom/htc/fm/FMSeekBar$SyncValues;->getFreq(I)I

    move-result v2

    .line 522
    .local v2, retFreq:I
    :goto_0
    return v2

    .line 517
    .end local v2           #retFreq:I
    :cond_2
    iget-object v5, p0, Lcom/htc/fm/FMSeekBar;->mPixelArray:[I

    aget v5, v5, v6

    if-ge p1, v5, :cond_3

    .line 518
    iget-object v5, p0, Lcom/htc/fm/FMSeekBar;->mFreqArray:[I

    aget v2, v5, v6

    .restart local v2       #retFreq:I
    goto :goto_0

    .line 520
    .end local v2           #retFreq:I
    :cond_3
    iget-object v5, p0, Lcom/htc/fm/FMSeekBar;->mFreqArray:[I

    iget-object v6, p0, Lcom/htc/fm/FMSeekBar;->mFreqArray:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v2, v5, v6

    .restart local v2       #retFreq:I
    goto :goto_0
.end method

.method private getPixel(I)I
    .locals 5
    .parameter "freq"

    .prologue
    .line 493
    const/4 v3, 0x0

    .line 494
    .local v3, values:Lcom/htc/fm/FMSeekBar$SyncValues;
    new-instance v1, Lcom/htc/fm/FMSeekBar$SyncInterval;

    invoke-direct {v1, p1}, Lcom/htc/fm/FMSeekBar$SyncInterval;-><init>(I)V

    .line 495
    .local v1, interval:Lcom/htc/fm/FMSeekBar$SyncInterval;
    iget-object v4, p0, Lcom/htc/fm/FMSeekBar;->mSyncHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fm/FMSeekBar$SyncInterval;

    .line 496
    .local v2, syncInterval:Lcom/htc/fm/FMSeekBar$SyncInterval;
    invoke-virtual {v1, v2}, Lcom/htc/fm/FMSeekBar$SyncInterval;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    iget-object v4, p0, Lcom/htc/fm/FMSeekBar;->mSyncHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #values:Lcom/htc/fm/FMSeekBar$SyncValues;
    check-cast v3, Lcom/htc/fm/FMSeekBar$SyncValues;

    .line 501
    .end local v2           #syncInterval:Lcom/htc/fm/FMSeekBar$SyncInterval;
    .restart local v3       #values:Lcom/htc/fm/FMSeekBar$SyncValues;
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Lcom/htc/fm/FMSeekBar$SyncValues;->getPixel(I)I

    move-result v4

    :goto_0
    return v4

    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private setDefaultData()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 131
    const-string v0, "FMSeekBar"

    const-string v1, "[FMSeekBar] Etting default values for PixelArray and FreqArray"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/fm/FMSeekBar;->mFreqArray:[I

    .line 133
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/fm/FMSeekBar;->mPixelArray:[I

    .line 135
    return-void

    .line 132
    nop

    :array_0
    .array-data 0x4
        0xcct 0x55t 0x1t 0x0t
        0x90t 0x5ft 0x1t 0x0t
        0x28t 0x9at 0x1t 0x0t
        0xe0t 0xa5t 0x1t 0x0t
    .end array-data

    .line 133
    :array_1
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x56t 0x1t 0x0t 0x0t
        0x61t 0x1t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public init(Z)V
    .locals 1
    .parameter "isLandscap"

    .prologue
    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMSeekBar;->setFocusable(Z)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMSeekBar;->setFocusableInTouchMode(Z)V

    .line 140
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/htc/fm/FMSeekBar;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar;->mHighLight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mHighLightRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 255
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar;->mHighLight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    :goto_0
    iget-boolean v0, p0, Lcom/htc/fm/FMSeekBar;->mPressed:Z

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbPress:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 263
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 269
    :goto_1
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar;->mHighLightDisable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mHighLightRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 258
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar;->mHighLightDisable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 267
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 288
    const-string v0, "SeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMSeekBar] focused("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  direction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/htc/fm/FMSeekBar;->mPressed:Z

    if-nez v0, :cond_1

    const/16 v0, 0x11

    if-eq p2, v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 292
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 307
    :goto_0
    return-void

    .line 296
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/htc/fm/FMSeekBar;->mPressed:Z

    if-nez v0, :cond_2

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/FMSeekBar;->mPressed:Z

    .line 298
    invoke-virtual {p0}, Lcom/htc/fm/FMSeekBar;->invalidate()V

    .line 301
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/htc/fm/FMSeekBar;->mPressed:Z

    if-eqz v0, :cond_3

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/FMSeekBar;->mPressed:Z

    .line 303
    invoke-virtual {p0}, Lcom/htc/fm/FMSeekBar;->invalidate()V

    .line 306
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 312
    iget-boolean v1, p0, Lcom/htc/fm/FMSeekBar;->mPressed:Z

    if-nez v1, :cond_1

    .line 313
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 316
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 326
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 318
    :pswitch_0
    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    invoke-interface {v1, v2, v2}, Lcom/htc/fm/FMSeekBarTouchListener;->onDpadChanged(ZZ)V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    invoke-interface {v1, v0, v2}, Lcom/htc/fm/FMSeekBarTouchListener;->onDpadChanged(ZZ)V

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 332
    iget-boolean v1, p0, Lcom/htc/fm/FMSeekBar;->mPressed:Z

    if-nez v1, :cond_1

    .line 333
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 336
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 346
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 338
    :pswitch_0
    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/htc/fm/FMSeekBarTouchListener;->onDpadChanged(ZZ)V

    goto :goto_0

    .line 342
    :pswitch_1
    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    invoke-interface {v1, v0, v0}, Lcom/htc/fm/FMSeekBarTouchListener;->onDpadChanged(ZZ)V

    goto :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 354
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 355
    new-instance v0, Landroid/graphics/Rect;

    sub-int v1, p4, p2

    iget v2, p0, Lcom/htc/fm/FMSeekBar;->mPixelDelta:I

    add-int/2addr v1, v2

    sub-int v2, p5, p3

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/fm/FMSeekBar;->mTouchableArea:Landroid/graphics/Rect;

    .line 356
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar;->mHighLightRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 357
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar;->mHighLightRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mHighLightRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/htc/fm/FMSeekBar;->mHighLightHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 358
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbRect:Landroid/graphics/Rect;

    sub-int v1, p5, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 359
    iget-object v0, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 360
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v12, -0x1

    const/4 v7, 0x1

    .line 150
    iget-boolean v8, p0, Lcom/htc/fm/FMSeekBar;->mIsEnabled:Z

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    if-nez v8, :cond_2

    :cond_0
    move v6, v7

    .line 232
    :cond_1
    :goto_0
    return v6

    .line 153
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 155
    .local v1, moveAction:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 156
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 158
    .local v5, y:I
    iget-object v8, p0, Lcom/htc/fm/FMSeekBar;->mTouchableArea:Landroid/graphics/Rect;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_3

    if-ne v1, v7, :cond_1

    .line 163
    :cond_3
    const/4 v0, 0x0

    .line 164
    .local v0, freq:I
    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    move v6, v7

    .line 232
    goto :goto_0

    .line 166
    :pswitch_0
    iput-boolean v7, p0, Lcom/htc/fm/FMSeekBar;->mPressed:Z

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/fm/FMSeekBar;->mOnTouchDownTime:J

    .line 168
    invoke-direct {p0, v4}, Lcom/htc/fm/FMSeekBar;->getFreq(I)I

    move-result v0

    .line 169
    if-eq v0, v12, :cond_4

    .line 171
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMSeekBar;->setFreq(I)V

    .line 172
    iget-object v6, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    if-eqz v6, :cond_5

    .line 173
    iget-object v6, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    invoke-interface {v6, v0}, Lcom/htc/fm/FMSeekBarTouchListener;->onStartTrackingTouch(I)V

    .line 174
    :cond_5
    iput v4, p0, Lcom/htc/fm/FMSeekBar;->mLastMoveX:I

    goto :goto_1

    .line 178
    :pswitch_1
    iget-boolean v6, p0, Lcom/htc/fm/FMSeekBar;->mPressed:Z

    if-eqz v6, :cond_4

    .line 181
    iput v4, p0, Lcom/htc/fm/FMSeekBar;->mLastMoveX:I

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 183
    .local v2, now:J
    iget-wide v8, p0, Lcom/htc/fm/FMSeekBar;->prevMoveTime:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_7

    .line 184
    iput-wide v2, p0, Lcom/htc/fm/FMSeekBar;->prevMoveTime:J

    .line 191
    :cond_6
    :goto_2
    invoke-direct {p0, v4}, Lcom/htc/fm/FMSeekBar;->getFreq(I)I

    move-result v0

    .line 192
    if-eq v0, v12, :cond_4

    .line 194
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMSeekBar;->setFreq(I)V

    .line 195
    iget-object v6, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    if-eqz v6, :cond_4

    .line 196
    iget-object v6, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    invoke-interface {v6, v0}, Lcom/htc/fm/FMSeekBarTouchListener;->onProgressChanged(I)V

    goto :goto_1

    .line 186
    :cond_7
    iget-wide v8, p0, Lcom/htc/fm/FMSeekBar;->prevMoveTime:J

    sub-long v8, v2, v8

    sget v6, Lcom/htc/fm/FMSeekBar;->SAVE_MOVE_TIME_INTERVAL:I

    int-to-long v10, v6

    cmp-long v6, v8, v10

    if-lez v6, :cond_6

    .line 187
    iput-wide v2, p0, Lcom/htc/fm/FMSeekBar;->prevMoveTime:J

    goto :goto_2

    .line 202
    .end local v2           #now:J
    :pswitch_2
    iget-boolean v8, p0, Lcom/htc/fm/FMSeekBar;->mPressed:Z

    if-eqz v8, :cond_4

    .line 205
    iput-boolean v6, p0, Lcom/htc/fm/FMSeekBar;->mPressed:Z

    .line 207
    const-string v6, "FMSeekBar"

    const-string v8, "[FMSeekBar] touch up!"

    invoke-static {v6, v8}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 209
    .restart local v2       #now:J
    iget-wide v8, p0, Lcom/htc/fm/FMSeekBar;->mOnTouchDownTime:J

    sub-long v8, v2, v8

    sget v6, Lcom/htc/fm/FMSeekBar;->SAVE_MOVE_TIME_INTERVAL:I

    int-to-long v10, v6

    cmp-long v6, v8, v10

    if-lez v6, :cond_9

    .line 210
    iget v6, p0, Lcom/htc/fm/FMSeekBar;->mLastMoveX:I

    invoke-direct {p0, v6}, Lcom/htc/fm/FMSeekBar;->getFreq(I)I

    move-result v0

    .line 211
    if-eq v0, v12, :cond_4

    .line 213
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMSeekBar;->setFreq(I)V

    .line 214
    iget-object v6, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    if-eqz v6, :cond_8

    .line 215
    iget-object v6, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    invoke-interface {v6, v0}, Lcom/htc/fm/FMSeekBarTouchListener;->onProgressChanged(I)V

    .line 221
    :cond_8
    :goto_3
    iget-object v6, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    if-eqz v6, :cond_4

    .line 222
    const-string v6, "FREQ_INFO"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v6, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    invoke-interface {v6, v0}, Lcom/htc/fm/FMSeekBarTouchListener;->onStopTrackingTouch(I)V

    goto/16 :goto_1

    .line 218
    :cond_9
    invoke-virtual {p0}, Lcom/htc/fm/FMSeekBar;->invalidate()V

    goto :goto_3

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/htc/fm/FMSeekBar;->mIsEnabled:Z

    .line 276
    invoke-virtual {p0}, Lcom/htc/fm/FMSeekBar;->invalidate()V

    .line 277
    return-void
.end method

.method public setFreq(I)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/htc/fm/FMSeekBar;->getPixel(I)I

    move-result v0

    .line 241
    .local v0, pixel:I
    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/fm/FMSeekBar;->mPixelDelta:I

    sub-int v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 242
    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mDrawThumbRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/fm/FMSeekBar;->mPixelDelta:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 244
    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mHighLightRect:Landroid/graphics/Rect;

    add-int/lit8 v2, v0, -0x2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 245
    iget-object v1, p0, Lcom/htc/fm/FMSeekBar;->mHighLightRect:Landroid/graphics/Rect;

    add-int/lit8 v2, v0, 0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 247
    invoke-virtual {p0}, Lcom/htc/fm/FMSeekBar;->invalidate()V

    .line 248
    return-void
.end method

.method public setTouchListener(Lcom/htc/fm/FMSeekBarTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/htc/fm/FMSeekBar;->mListener:Lcom/htc/fm/FMSeekBarTouchListener;

    .line 283
    return-void
.end method
