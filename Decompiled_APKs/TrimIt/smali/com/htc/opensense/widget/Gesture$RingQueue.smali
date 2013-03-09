.class Lcom/htc/opensense/widget/Gesture$RingQueue;
.super Ljava/lang/Object;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RingQueue"
.end annotation


# static fields
.field static final SIZE:I = 0x3


# instance fields
.field mHead:I

.field mRing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/widget/Gesture$Event;",
            ">;"
        }
    .end annotation
.end field

.field mTail:I

.field final synthetic this$0:Lcom/htc/opensense/widget/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/Gesture;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 249
    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mRing:Ljava/util/ArrayList;

    .line 252
    iput v2, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mHead:I

    .line 253
    iput v2, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mTail:I

    return-void
.end method


# virtual methods
.method getHisotry(I)Lcom/htc/opensense/widget/Gesture$Event;
    .locals 3
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 269
    const/4 v2, 0x3

    if-lt p1, v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-object v1

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/Gesture$RingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    iget v2, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mHead:I

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 274
    .local v0, idx:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/Gesture$RingQueue;->isRing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    if-gez v0, :cond_2

    .line 276
    add-int/lit8 v0, v0, 0x3

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mRing:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/widget/Gesture$Event;

    goto :goto_0

    .line 278
    :cond_3
    if-gez v0, :cond_2

    goto :goto_0
.end method

.method public getLastEvt()Lcom/htc/opensense/widget/Gesture$Event;
    .locals 3

    .prologue
    .line 336
    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->this$0:Lcom/htc/opensense/widget/Gesture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/opensense/widget/Gesture;->getHistory(I)Lcom/htc/opensense/widget/Gesture$Event;

    move-result-object v0

    .line 339
    .local v0, evt:Lcom/htc/opensense/widget/Gesture$Event;
    return-object v0
.end method

.method isEmpty()Z
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mHead:I

    iget v1, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mTail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFull()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mHead:I

    iget v1, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mTail:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/Gesture$RingQueue;->isRing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRing()Z
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mRing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public obtain(Landroid/view/MotionEvent;)Lcom/htc/opensense/widget/Gesture$Event;
    .locals 4
    .parameter "me"

    .prologue
    const/4 v3, 0x1

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, evt:Lcom/htc/opensense/widget/Gesture$Event;
    invoke-virtual {p0}, Lcom/htc/opensense/widget/Gesture$RingQueue;->isRing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    new-instance v0, Lcom/htc/opensense/widget/Gesture$Event;

    .end local v0           #evt:Lcom/htc/opensense/widget/Gesture$Event;
    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->this$0:Lcom/htc/opensense/widget/Gesture;

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/Gesture$Event;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    .line 318
    .restart local v0       #evt:Lcom/htc/opensense/widget/Gesture$Event;
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, v0, Lcom/htc/opensense/widget/Gesture$Event;->mAction:I

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iput v1, v0, Lcom/htc/opensense/widget/Gesture$Event;->mFingers:I

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    .line 323
    iget v1, v0, Lcom/htc/opensense/widget/Gesture$Event;->mFingers:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 324
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, v0, Lcom/htc/opensense/widget/Gesture$Event;->mX2:F

    .line 325
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, v0, Lcom/htc/opensense/widget/Gesture$Event;->mY2:F

    .line 330
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/opensense/widget/Gesture$Event;->mTime:J

    move-object v1, v0

    .line 332
    :goto_2
    return-object v1

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/Gesture$RingQueue;->isFull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const-string v1, "Gesture"

    const-string v2, "[Opensense][Widget][Gesture][put]: Ring\'s Tail can\'t over exceed Head! Check obtain, put pair"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v1, 0x0

    goto :goto_2

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mRing:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mTail:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #evt:Lcom/htc/opensense/widget/Gesture$Event;
    check-cast v0, Lcom/htc/opensense/widget/Gesture$Event;

    .line 316
    .restart local v0       #evt:Lcom/htc/opensense/widget/Gesture$Event;
    iget v1, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mTail:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mTail:I

    goto :goto_0

    .line 327
    :cond_2
    iget v1, v0, Lcom/htc/opensense/widget/Gesture$Event;->mX:F

    iput v1, v0, Lcom/htc/opensense/widget/Gesture$Event;->mX2:F

    .line 328
    iget v1, v0, Lcom/htc/opensense/widget/Gesture$Event;->mY:F

    iput v1, v0, Lcom/htc/opensense/widget/Gesture$Event;->mY2:F

    goto :goto_1
.end method

.method put(Lcom/htc/opensense/widget/Gesture$Event;)V
    .locals 2
    .parameter "evt"

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 287
    const-string v0, "Gesture"

    const-string v1, "[Opensense][Widget][Gesture][put]: evt is Null !"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/Gesture$RingQueue;->isFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    const-string v0, "Gesture"

    const-string v1, "[Opensense][Widget][Gesture][put]: isFull() NG ! Ring is full can\'t put anymore! Check obtain, put pair !"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/Gesture$RingQueue;->isRing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mRing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :goto_1
    iget v0, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mHead:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mHead:I

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mRing:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/opensense/widget/Gesture$RingQueue;->mHead:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
