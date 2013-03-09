.class Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;
.super Ljava/lang/Object;
.source "ScrollbarAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Marker"
.end annotation


# instance fields
.field endFrame:F

.field startFrame:F

.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;


# direct methods
.method private constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->this$0:Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;-><init>(Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator;)V

    return-void
.end method


# virtual methods
.method getDuration()F
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->endFrame:F

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ScrollbarAnimator$Marker;->startFrame:F

    sub-float/2addr v0, v1

    return v0
.end method
