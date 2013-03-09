.class public final Lcom/htc/usage/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ChartGridView:[I = null

.field public static final ChartGridView_borderDrawable:I = 0x3

.field public static final ChartGridView_labelColor:I = 0x0

.field public static final ChartGridView_primaryDrawable:I = 0x1

.field public static final ChartGridView_secondaryDrawable:I = 0x2

.field public static final ChartNetworkSeriesView:[I = null

.field public static final ChartNetworkSeriesView_fillColor:I = 0x1

.field public static final ChartNetworkSeriesView_fillColorSecondary:I = 0x2

.field public static final ChartNetworkSeriesView_strokeColor:I = 0x0

.field public static final ChartSweepView:[I = null

.field public static final ChartSweepView_followAxis:I = 0x1

.field public static final ChartSweepView_labelColor:I = 0x5

.field public static final ChartSweepView_labelSize:I = 0x3

.field public static final ChartSweepView_labelTemplate:I = 0x4

.field public static final ChartSweepView_neighborMargin:I = 0x2

.field public static final ChartSweepView_sweepDrawable:I = 0x0

.field public static final ChartView:[I = null

.field public static final ChartView_optimalWidth:I = 0x0

.field public static final ChartView_optimalWidthWeight:I = 0x1

.field public static final PercentageBarChart:[I = null

.field public static final PercentageBarChart_emptyColor:I = 0x0

.field public static final PercentageBarChart_minTickWidth:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 6003
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/usage/R$styleable;->ChartGridView:[I

    .line 6065
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/usage/R$styleable;->ChartNetworkSeriesView:[I

    .line 6133
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/usage/R$styleable;->ChartSweepView:[I

    .line 6233
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/usage/R$styleable;->ChartView:[I

    .line 6282
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/htc/usage/R$styleable;->PercentageBarChart:[I

    return-void

    .line 6003
    :array_0
    .array-data 0x4
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
    .end array-data

    .line 6065
    :array_1
    .array-data 0x4
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
    .end array-data

    .line 6133
    :array_2
    .array-data 0x4
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data

    .line 6233
    :array_3
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data

    .line 6282
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5986
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
