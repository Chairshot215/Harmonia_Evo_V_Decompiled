.class public final Lcom/htc/fm/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FMSeekBar:[I = null

.field public static final FMSeekBar_frequences:I = 0x1

.field public static final FMSeekBar_highlight_height:I = 0x0

.field public static final FMSeekBar_positions:I = 0x2

.field public static final HtcListView:[I = null

.field public static final HtcListView_bottomBorderHeight:I = 0x1

.field public static final HtcListView_bottomDrawable:I = 0x4

.field public static final HtcListView_middleDrawable:I = 0x5

.field public static final HtcListView_shouldFillEmpty:I = 0x2

.field public static final HtcListView_topBorderDrawable:I = 0x6

.field public static final HtcListView_topBorderHeight:I = 0x0

.field public static final HtcListView_topDrawable:I = 0x3

.field public static final Screen:[I = null

.field public static final Screen_resolution:I = 0x0

.field public static final SignalBar:[I = null

.field public static final SignalBar_maxCount:I = 0x0

.field public static final SignalBar_offResID:I = 0x3

.field public static final SignalBar_onResID:I = 0x2

.field public static final SignalBar_space:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4477
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/fm/R$styleable;->FMSeekBar:[I

    .line 4536
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/fm/R$styleable;->HtcListView:[I

    .line 4636
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/htc/fm/R$styleable;->Screen:[I

    .line 4674
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/fm/R$styleable;->SignalBar:[I

    return-void

    .line 4477
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data

    .line 4536
    :array_1
    .array-data 0x4
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
    .end array-data

    .line 4674
    :array_2
    .array-data 0x4
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
