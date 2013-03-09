.class public Landroid/animation/DoubleEvaluator;
.super Ljava/lang/Object;
.source "DoubleEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 27
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 28
    .local v0, startDouble:D
    float-to-double v2, p1

    check-cast p3, Ljava/lang/Number;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method
