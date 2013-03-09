.class Lcom/android/htccontacts/ui/QuickContactWindow$1;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/QuickContactWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/QuickContactWindow;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/QuickContactWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/htccontacts/ui/QuickContactWindow$1;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .parameter "t"

    .prologue
    .line 368
    const v1, 0x3fc66666

    mul-float/2addr v1, p1

    const v2, 0x3f8ccccd

    sub-float v0, v1, v2

    .line 369
    .local v0, inner:F
    const v1, 0x3f99999a

    mul-float v2, v0, v0

    sub-float/2addr v1, v2

    return v1
.end method
