.class Lcom/android/htcdialer/Dialer$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->initKeypadGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 878
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$4;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x0

    .line 880
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 881
    :cond_0
    const-string v2, "HtcDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onFing: null e1:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", e2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_1
    :goto_0
    return v1

    .line 885
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 889
    .local v0, dy:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 890
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_3

    .line 892
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$4;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->hideDialpad()V
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$1200(Lcom/android/htcdialer/Dialer;)V

    .line 896
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method
