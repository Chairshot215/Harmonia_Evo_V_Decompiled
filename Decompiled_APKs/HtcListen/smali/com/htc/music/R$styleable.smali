.class public final Lcom/htc/music/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final HtcListView:[I = null

.field public static final HtcListView_bottomBorderHeight:I = 0x1

.field public static final HtcListView_bottomDrawable:I = 0x4

.field public static final HtcListView_middleDrawable:I = 0x5

.field public static final HtcListView_shouldFillEmpty:I = 0x2

.field public static final HtcListView_topBorderDrawable:I = 0x6

.field public static final HtcListView_topBorderHeight:I = 0x0

.field public static final HtcListView_topDrawable:I = 0x3

.field public static final HtcSeekBar:[I = null

.field public static final HtcSeekBar_max:I = 0x0

.field public static final HtcSeekBar_maxHeight:I = 0x4

.field public static final HtcSeekBar_minHeight:I = 0x3

.field public static final HtcSeekBar_pressed_maxHeight:I = 0x9

.field public static final HtcSeekBar_pressed_minHeight:I = 0x8

.field public static final HtcSeekBar_pressed_progressDrawable:I = 0x7

.field public static final HtcSeekBar_pressed_thumb:I = 0xa

.field public static final HtcSeekBar_pressed_thumbOffset:I = 0xb

.field public static final HtcSeekBar_progress:I = 0x1

.field public static final HtcSeekBar_progressDrawable:I = 0x2

.field public static final HtcSeekBar_thumb:I = 0x5

.field public static final HtcSeekBar_thumbOffset:I = 0x6

.field public static final Screen:[I

.field public static final Screen_resolution:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/music/R$styleable;->HtcSeekBar:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/music/R$styleable;->HtcListView:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/htc/music/R$styleable;->Screen:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
