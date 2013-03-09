.class public final Lcom/htc/android/mail/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/R;
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

.field public static final MailAttachment:[I = null

.field public static final MailAttachment_bottomRoundCorner:I = 0x1

.field public static final MailAttachment_topRoundCorner:I = 0x0

.field public static final TextMailHeaderBar:[I = null

.field public static final TextMailHeaderBar_headerbar_text1:I = 0x1

.field public static final TextMailHeaderBar_headerbar_text2:I = 0x2

.field public static final TextMailHeaderBar_headerbar_text3:I = 0x3

.field public static final TextMailHeaderBar_headerbar_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/mail/R$styleable;->HtcListView:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/android/mail/R$styleable;->MailAttachment:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/android/mail/R$styleable;->TextMailHeaderBar:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
