.class public final Lcom/android/htccontacts/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final EdgeTriggerView:[I = null

.field public static final EdgeTriggerView_edgeWidth:I = 0x0

.field public static final EdgeTriggerView_listenEdges:I = 0x1

.field public static final HtcButtonFrameLayout:[I = null

.field public static final HtcButtonFrameLayout_buttonStyle:I = 0x0

.field public static final HtcListView:[I = null

.field public static final HtcListView_bottomBorderHeight:I = 0x1

.field public static final HtcListView_bottomDrawable:I = 0x4

.field public static final HtcListView_middleDrawable:I = 0x5

.field public static final HtcListView_shouldFillEmpty:I = 0x2

.field public static final HtcListView_topBorderDrawable:I = 0x6

.field public static final HtcListView_topBorderHeight:I = 0x0

.field public static final HtcListView_topDrawable:I = 0x3

.field public static final Mapping:[I = null

.field public static final Mapping_detailColumn:I = 0x4

.field public static final Mapping_icon:I = 0x2

.field public static final Mapping_mimeType:I = 0x0

.field public static final Mapping_remoteViews:I = 0x1

.field public static final Mapping_summaryColumn:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/htccontacts/R$styleable;->EdgeTriggerView:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010008

    aput v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/R$styleable;->HtcButtonFrameLayout:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/htccontacts/R$styleable;->HtcListView:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/htccontacts/R$styleable;->Mapping:[I

    return-void

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
