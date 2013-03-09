.class public Lcom/android/commands/monkey/MonkeySourceRandom;
.super Ljava/lang/Object;
.source "MonkeySourceRandom.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field public static final FACTORZ_COUNT:I = 0xa

.field public static final FACTOR_ANYTHING:I = 0x9

.field public static final FACTOR_APPSWITCH:I = 0x7

.field public static final FACTOR_FLIP:I = 0x8

.field public static final FACTOR_MAJORNAV:I = 0x5

.field public static final FACTOR_MOTION:I = 0x1

.field public static final FACTOR_NAV:I = 0x4

.field public static final FACTOR_PINCHZOOM:I = 0x2

.field public static final FACTOR_SYSOPS:I = 0x6

.field public static final FACTOR_TOUCH:I = 0x0

.field public static final FACTOR_TRACKBALL:I = 0x3

.field private static final GESTURE_DRAG:I = 0x1

.field private static final GESTURE_PINCH_OR_ZOOM:I = 0x2

.field private static final GESTURE_TAP:I

.field private static final MAJOR_NAV_KEYS:[I

.field private static final NAV_KEYS:[I

.field private static final PHYSICAL_KEY_EXISTS:[Z

.field private static final SYS_KEYS:[I


# instance fields
.field private mEventCount:I

.field private mFactors:[F

.field private mKeyboardOpen:Z

.field private mMainApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mRandom:Ljava/util/Random;

.field private mThrottle:J

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Z

    sput-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    aget v2, v2, v0

    sget-object v3, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    aget v3, v3, v0

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 0x4
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x52t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xa4t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Random;Ljava/util/ArrayList;JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Random;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;JZ)V"
        }
    .end annotation

    const/high16 v4, 0x4170

    const/high16 v3, 0x4000

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mThrottle:J

    iput-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aput v4, v0, v2

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x1

    const/high16 v2, 0x4120

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x3

    aput v4, v0, v1

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x4

    const/high16 v2, 0x41c8

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x5

    aput v4, v0, v1

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/16 v1, 0x8

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/16 v1, 0x9

    const/high16 v2, 0x4150

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    iput-object p1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(Ljava/util/Random;JZ)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    return-void
.end method

.method private adjustEventFactors()Z
    .locals 13

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/high16 v12, 0x42c8

    const/16 v11, 0xa

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v11, :cond_1

    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v8, v8, v4

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_0

    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v8, v8, v4

    sub-float/2addr v6, v8

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v8, v8, v4

    add-float/2addr v1, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    cmpl-float v8, v6, v12

    if-lez v8, :cond_3

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "** Event weights > 100%"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return v7

    :cond_3
    if-nez v0, :cond_5

    const v8, 0x42c7cccd

    cmpg-float v8, v6, v8

    if-ltz v8, :cond_4

    const v8, 0x42c83333

    cmpl-float v8, v6, v8

    if-lez v8, :cond_5

    :cond_4
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "** Event weights != 100%"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sub-float v3, v12, v6

    div-float v2, v3, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v11, :cond_7

    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v8, v8, v4

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_6

    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    iget-object v9, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v9, v9, v4

    neg-float v9, v9

    aput v9, v8, v4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v9, v8, v4

    mul-float/2addr v9, v2

    aput v9, v8, v4

    goto :goto_4

    :cond_7
    iget v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    if-lez v8, :cond_8

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "// Event percentages:"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v11, :cond_8

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "//   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeys()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v11, :cond_9

    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v7, v7, v4

    div-float/2addr v7, v12

    add-float/2addr v5, v7

    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aput v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_2
.end method

.method private generateEvents()V
    .locals 9

    const/4 v8, 0x6

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v5, v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v3, v4}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v5, v5, v3

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v4, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v3, v6}, Lcom/android/commands/monkey/MonkeySourceRandom;->generatePointerEvent(Ljava/util/Random;I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateTrackballEvent(Ljava/util/Random;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_4

    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    sget-object v7, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v2, v5, v6

    :goto_1
    const/16 v5, 0x1a

    if-eq v2, v5, :cond_3

    if-eq v2, v8, :cond_3

    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_3

    new-instance v1, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {v1, v4, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    new-instance v1, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {v1, v3, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_5

    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    sget-object v7, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v2, v5, v6

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v5, v5, v8

    cmpg-float v5, v0, v5

    if-gez v5, :cond_6

    sget-object v5, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    sget-object v7, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v2, v5, v6

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v6, 0x7

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_7

    new-instance v1, Lcom/android/commands/monkey/MonkeyActivityEvent;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-direct {v1, v3}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    cmpg-float v5, v0, v5

    if-gez v5, :cond_9

    new-instance v1, Lcom/android/commands/monkey/MonkeyFlipEvent;

    iget-boolean v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    invoke-direct {v1, v5}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    iget-boolean v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    if-nez v5, :cond_8

    :goto_2
    iput-boolean v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mKeyboardOpen:Z

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v3, v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    goto/16 :goto_1
.end method

.method private generatePointerEvent(Ljava/util/Random;I)V
    .locals 15

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-direct/range {p0 .. p1}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomVector(Ljava/util/Random;)Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v10, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v11, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v11, v3, v4}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x0

    iget v13, v6, Landroid/graphics/PointF;->x:F

    iget v14, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_0

    const/16 v10, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2, v6, v8}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v10, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v11, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v12, 0x2

    invoke-direct {v11, v12}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v11, v3, v4}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x0

    iget v13, v6, Landroid/graphics/PointF;->x:F

    iget v14, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x2

    move/from16 v0, p2

    if-ne v0, v10, :cond_2

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-direct/range {p0 .. p1}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomVector(Ljava/util/Random;)Landroid/graphics/PointF;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2, v6, v8}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v10, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v11, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v12, 0x105

    invoke-direct {v11, v12}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v11, v3, v4}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x0

    iget v13, v6, Landroid/graphics/PointF;->x:F

    iget v14, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x1

    iget v13, v7, Landroid/graphics/PointF;->x:F

    iget v14, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    const/16 v10, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2, v6, v8}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2, v7, v9}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v10, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v11, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v12, 0x2

    invoke-direct {v11, v12}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v11, v3, v4}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x0

    iget v13, v6, Landroid/graphics/PointF;->x:F

    iget v14, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x1

    iget v13, v7, Landroid/graphics/PointF;->x:F

    iget v14, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2, v6, v8}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2, v7, v9}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v10, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v11, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v12, 0x106

    invoke-direct {v11, v12}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v11, v3, v4}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x0

    iget v13, v6, Landroid/graphics/PointF;->x:F

    iget v14, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x1

    iget v13, v7, Landroid/graphics/PointF;->x:F

    iget v14, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    :cond_2
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2, v6, v8}, Lcom/android/commands/monkey/MonkeySourceRandom;->randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v10, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v11, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v11, v3, v4}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x0

    iget v13, v6, Landroid/graphics/PointF;->x:F

    iget v14, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    return-void
.end method

.method private generateTrackballEvent(Ljava/util/Random;)V
    .locals 13

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v8, 0xa

    invoke-virtual {p1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0xa

    if-ge v7, v8, :cond_1

    const/16 v8, 0xa

    invoke-virtual {p1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v1, v8, -0x5

    const/16 v8, 0xa

    invoke-virtual {p1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v2, v8, -0x5

    iget-object v9, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v8, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    const/4 v10, 0x0

    int-to-float v11, v1

    int-to-float v12, v2

    invoke-virtual {v8, v10, v11, v12}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v10

    if-lez v7, :cond_0

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v10, v8}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    const/16 v8, 0xa

    invoke-virtual {p1, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    invoke-virtual {v9, v4, v5}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    iget-object v8, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v9, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V

    invoke-virtual {v9, v4, v5}, Lcom/android/commands/monkey/MonkeyTrackballEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    :cond_2
    return-void
.end method

.method public static getKeyCode(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getKeyName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private randomPoint(Ljava/util/Random;Landroid/view/Display;)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private randomVector(Ljava/util/Random;)Landroid/graphics/PointF;
    .locals 5

    const/high16 v4, 0x4248

    const/high16 v3, 0x3f00

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v1, v3

    mul-float/2addr v1, v4

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private randomWalk(Ljava/util/Random;Landroid/view/Display;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p3, Landroid/graphics/PointF;->x:F

    iget v0, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p3, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private static validateKeyCategory(Ljava/lang/String;[IF)Z
    .locals 4

    const/4 v1, 0x1

    const v2, 0x3dcccccd

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/android/commands/monkey/MonkeySourceRandom;->PHYSICAL_KEY_EXISTS:[Z

    aget v3, p1, v0

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no physical keys but with factor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validateKeys()Z
    .locals 4

    const-string v0, "NAV_KEYS"

    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->NAV_KEYS:[I

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MAJOR_NAV_KEYS"

    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->MAJOR_NAV_KEYS:[I

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SYS_KEYS"

    sget-object v1, Lcom/android/commands/monkey/MonkeySourceRandom;->SYS_KEYS:[I

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->validateKeyCategory(Ljava/lang/String;[IF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public generateActivity()V
    .locals 4

    new-instance v0, Lcom/android/commands/monkey/MonkeyActivityEvent;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mRandom:Ljava/util/Random;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    return-void
.end method

.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 2

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->generateEvents()V

    :cond_0
    iget v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mEventCount:I

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/monkey/MonkeyEvent;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;

    return-object v0
.end method

.method public setFactors(IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aput p2, v0, p1

    return-void
.end method

.method public setFactors([F)V
    .locals 4

    const/16 v0, 0xa

    array-length v2, p1

    if-ge v2, v0, :cond_0

    array-length v0, p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mFactors:[F

    aget v3, p1, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVerbose(I)V
    .locals 0

    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceRandom;->mVerbose:I

    return-void
.end method

.method public validate()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->adjustEventFactors()Z

    move-result v0

    return v0
.end method
