.class public final Lcom/google/android/gm/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FancySummaryListPreference:[I = null

.field public static final FancySummaryListPreference_entrySummaries:I = 0x0

.field public static final MultiAdapterSpinner:[I = null

.field public static final MultiAdapterSpinner_dropDownWidth:I = 0x0

.field public static final RecipientEditTextView:[I = null

.field public static final RecipientEditTextView_chipAlternatesLayout:I = 0x4

.field public static final RecipientEditTextView_chipBackground:I = 0x1

.field public static final RecipientEditTextView_chipBackgroundPressed:I = 0x2

.field public static final RecipientEditTextView_chipDelete:I = 0x3

.field public static final RecipientEditTextView_chipFontSize:I = 0x7

.field public static final RecipientEditTextView_chipHeight:I = 0x6

.field public static final RecipientEditTextView_chipPadding:I = 0x5

.field public static final RecipientEditTextView_invalidChipBackground:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2175
    new-array v0, v3, [I

    const v1, 0x7f010001

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gm/R$styleable;->FancySummaryListPreference:[I

    .line 2198
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gm/R$styleable;->MultiAdapterSpinner:[I

    .line 2235
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gm/R$styleable;->RecipientEditTextView:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
