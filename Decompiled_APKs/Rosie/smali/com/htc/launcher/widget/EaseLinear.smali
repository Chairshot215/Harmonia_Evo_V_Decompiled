.class public Lcom/htc/launcher/widget/EaseLinear;
.super Ljava/lang/Object;
.source "EaseLinear.java"

# interfaces
.implements Lcom/htc/launcher/widget/EasingFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentResult(FFFFF)F
    .locals 1
    .parameter "v0"
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 6
    div-float/2addr p2, p5

    .line 7
    mul-float v0, p4, p2

    add-float/2addr v0, p3

    return v0
.end method
