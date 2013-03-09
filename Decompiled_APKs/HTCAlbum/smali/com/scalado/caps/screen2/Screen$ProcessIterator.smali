.class Lcom/scalado/caps/screen2/Screen$ProcessIterator;
.super Lcom/scalado/base/Iterator;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/screen2/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessIterator"
.end annotation


# instance fields
.field private optimalQualityReached:Z

.field final synthetic this$0:Lcom/scalado/caps/screen2/Screen;


# direct methods
.method constructor <init>(Lcom/scalado/caps/screen2/Screen;Lcom/scalado/caps/screen2/Screen;)V
    .locals 1
    .parameter
    .parameter "screen"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/scalado/caps/screen2/Screen$ProcessIterator;->this$0:Lcom/scalado/caps/screen2/Screen;

    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/screen2/Screen$ProcessIterator;->optimalQualityReached:Z

    .line 30
    invoke-direct {p0, p2}, Lcom/scalado/caps/screen2/Screen$ProcessIterator;->nativePreRender(Lcom/scalado/caps/screen2/Screen;)I

    .line 31
    return-void
.end method

.method private native nativePreRender(Lcom/scalado/caps/screen2/Screen;)I
.end method

.method private native nativeStepIterator()I
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public done()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected step()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/scalado/caps/screen2/Screen$ProcessIterator;->nativeStepIterator()I

    move-result v0

    .line 51
    .local v0, error:I
    const/4 v1, 0x0

    return v1
.end method

.method public step(I)F
    .locals 7
    .parameter "runTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x3f80

    .line 57
    if-nez p1, :cond_2

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/scalado/caps/screen2/Screen$ProcessIterator;->step()F

    .line 63
    iget-boolean v5, p0, Lcom/scalado/caps/screen2/Screen$ProcessIterator;->optimalQualityReached:Z

    if-eqz v5, :cond_0

    .line 79
    :cond_1
    :goto_0
    return v4

    .line 66
    :cond_2
    const v5, 0xf4240

    mul-int/2addr v5, p1

    int-to-long v0, v5

    .line 67
    .local v0, nanoRunTime:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 70
    .local v2, nanoStartTime:J
    :cond_3
    invoke-virtual {p0}, Lcom/scalado/caps/screen2/Screen$ProcessIterator;->step()F

    .line 71
    iget-boolean v5, p0, Lcom/scalado/caps/screen2/Screen$ProcessIterator;->optimalQualityReached:Z

    if-nez v5, :cond_1

    .line 77
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    cmp-long v5, v5, v0

    if-ltz v5, :cond_3

    .line 79
    const/4 v4, 0x0

    goto :goto_0
.end method
