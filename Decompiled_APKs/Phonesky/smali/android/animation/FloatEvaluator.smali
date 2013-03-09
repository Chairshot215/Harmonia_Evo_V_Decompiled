.class public Landroid/animation/FloatEvaluator;
.super Ljava/lang/Object;
.source "FloatEvaluator.java"

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
    .locals 2
    .parameter "fraction"
    .parameter "startValue"
    .parameter "endValue"

    .prologue
    .line 27
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 28
    .local v0, startFloat:F
    check-cast p3, Ljava/lang/Number;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method
