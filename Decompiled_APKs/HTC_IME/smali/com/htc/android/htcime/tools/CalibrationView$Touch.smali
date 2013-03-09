.class Lcom/htc/android/htcime/tools/CalibrationView$Touch;
.super Ljava/lang/Object;
.source "CalibrationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/tools/CalibrationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Touch"
.end annotation


# instance fields
.field action:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field ch:C

.field motionEventType:[C

.field final synthetic this$0:Lcom/htc/android/htcime/tools/CalibrationView;

.field timestamp:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field tx:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field ty:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/CalibrationView;CFF)V
    .locals 2
    .parameter
    .parameter "ch"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v1, 0xa

    .line 359
    iput-object p1, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->this$0:Lcom/htc/android/htcime/tools/CalibrationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->timestamp:Ljava/util/Vector;

    .line 354
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->action:Ljava/util/Vector;

    .line 355
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->tx:Ljava/util/Vector;

    .line 356
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->ty:Ljava/util/Vector;

    .line 357
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->motionEventType:[C

    .line 360
    iput-char p2, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->ch:C

    .line 361
    iput p3, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->x:F

    .line 362
    iput p4, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->y:F

    .line 363
    return-void

    .line 357
    :array_0
    .array-data 0x2
        0x44t 0x0t
        0x55t 0x0t
        0x4dt 0x0t
    .end array-data
.end method


# virtual methods
.method public toString(FF)Ljava/lang/String;
    .locals 9
    .parameter "baseX"
    .parameter "baseY"

    .prologue
    .line 381
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 383
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->timestamp:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 384
    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->tx:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float v1, v5, p1

    .line 385
    .local v1, rawTx:F
    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->ty:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float v2, v5, p2

    .line 387
    .local v2, rawTy:F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->motionEventType:[C

    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->action:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-char v5, v7, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-char v6, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->ch:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->timestamp:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, tmp:Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->timestamp:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", /, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 390
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 393
    .end local v1           #rawTx:F
    .end local v2           #rawTy:F
    .end local v4           #tmp:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method touched(IFF)V
    .locals 3
    .parameter "act"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->timestamp:Ljava/util/Vector;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->action:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->tx:Ljava/util/Vector;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->ty:Ljava/util/Vector;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 370
    return-void
.end method

.method touched(IFFJ)V
    .locals 2
    .parameter "act"
    .parameter "x"
    .parameter "y"
    .parameter "t"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->timestamp:Ljava/util/Vector;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->action:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->tx:Ljava/util/Vector;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lcom/htc/android/htcime/tools/CalibrationView$Touch;->ty:Ljava/util/Vector;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method
