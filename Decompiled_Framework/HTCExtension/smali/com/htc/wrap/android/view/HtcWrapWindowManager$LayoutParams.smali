.class public Lcom/htc/wrap/android/view/HtcWrapWindowManager$LayoutParams;
.super Landroid/view/WindowManager$LayoutParams;
.source "HtcWrapWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/view/HtcWrapWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final FLAG_EXTRA_DISABLE_PEN_AS_TOUCH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_EXTRA_DISABLE_SKETCH:I = 0x2

.field public static final FLAG_EXTRA_ENABLE_PEN_EVENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_EXTRA_PEN_STATUS_BAR:I = 0x10

.field public static final FLAG_EXTRA_PEN_TOOL_UI:I = 0x8

.field public static final FLAG_HIDE_STATUS_BAR:I = -0x80000000

.field public static final FLAG_LAYOUT_NO_TITLE:I = 0x2000000

.field public static final TYPE_HTC3D:I = 0x64

.field public static final TYPE_IDLE_SCREEN:I = 0x66

.field public static final TYPE_IDLE_SCREEN_BASE:I = 0x67

.field public static final TYPE_MA_ROTATE_ANIMATION:I = 0x6a

.field public static final TYPE_NORMAL_ROTATE_ANIMATION:I = 0x69

.field public static final TYPE_NO_ROTATE_ANIMATION:I = 0x68


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/WindowManager$LayoutParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getExtraFlags(Landroid/view/WindowManager$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    return v0
.end method

.method public static setExtraFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    return-void
.end method


# virtual methods
.method public getExtraFlags()I
    .locals 1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    return v0
.end method

.method public setExtraFlags(I)V
    .locals 0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    return-void
.end method
