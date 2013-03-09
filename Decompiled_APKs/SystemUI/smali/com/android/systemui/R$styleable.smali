.class public final Lcom/android/systemui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final KeyButtonView:[I = null

.field public static final KeyButtonView_glowBackground:I = 0x2

.field public static final KeyButtonView_keyCode:I = 0x0

.field public static final KeyButtonView_keyRepeat:I = 0x1

.field public static final NotificationLinearLayout:[I

.field public static final NotificationLinearLayout_insetLeft:I

.field public static final NotificationRowLayout:[I

.field public static final NotificationRowLayout_rowHeight:I

.field public static final ToggleSlider:[I

.field public static final ToggleSlider_text:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    new-array v0, v3, [I

    const v1, 0x7f010004

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->NotificationLinearLayout:[I

    new-array v0, v3, [I

    const v1, 0x7f010005

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->NotificationRowLayout:[I

    new-array v0, v3, [I

    const v1, 0x7f010003

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/R$styleable;->ToggleSlider:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
