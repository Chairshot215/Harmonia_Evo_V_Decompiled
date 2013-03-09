.class Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;
.super Landroid/os/Handler;
.source "PPStrokeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)V
    .locals 0
    .parameter

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/high16 v10, -0x4000

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1266
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1353
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1269
    :pswitch_0
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->isAllFinished()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1270
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$000(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1271
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->clear()V

    .line 1272
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getStrokePointSize()I

    move-result v6

    if-le v6, v9, :cond_2

    .line 1273
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1274
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->recognize()V

    .line 1285
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->reset()V

    .line 1286
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->expandPopupWin(Z)V

    goto :goto_0

    .line 1278
    :cond_2
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    invoke-static {v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getHandwritingSipID()I

    move-result v3

    .line 1279
    .local v3, sipID:I
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Transparent_HWR:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x7

    if-eq v6, v3, :cond_3

    if-ne v8, v3, :cond_4

    :cond_3
    move v0, v4

    .line 1282
    .local v0, bTranparent:Z
    :goto_2
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-result-object v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    .line 1283
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getSymbolCandidate()V

    goto :goto_1

    .end local v0           #bTranparent:Z
    :cond_4
    move v0, v5

    .line 1279
    goto :goto_2

    .line 1288
    .end local v3           #sipID:I
    :cond_5
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$000(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$000(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x32

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1293
    :pswitch_1
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #setter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_bFinishAnimation:Z
    invoke-static {v4, v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$202(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;Z)Z

    .line 1294
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #calls: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->animateClear()V
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$300(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)V

    goto/16 :goto_0

    .line 1299
    :pswitch_2
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$000(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1300
    new-instance v1, Landroid/graphics/PathMeasure;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_OneStrokePath:Landroid/graphics/Path;
    invoke-static {v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$400(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Landroid/graphics/Path;

    move-result-object v6

    invoke-direct {v1, v6, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 1301
    .local v1, pMeasure:Landroid/graphics/PathMeasure;
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->setStrokeLength(F)V

    .line 1303
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->stopStroke()V

    .line 1306
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    invoke-static {v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getHandwritingSipID()I

    move-result v3

    .line 1307
    .restart local v3       #sipID:I
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Transparent_HWR:Z

    if-eqz v6, :cond_a

    const/4 v6, 0x7

    if-eq v6, v3, :cond_6

    if-ne v8, v3, :cond_a

    :cond_6
    move v0, v4

    .line 1311
    .restart local v0       #bTranparent:Z
    :goto_3
    sget v5, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mContinuousInputMode:I

    if-ne v4, v5, :cond_8

    const/16 v5, 0x15

    if-eq v5, v3, :cond_8

    const/16 v5, 0x16

    if-eq v5, v3, :cond_8

    .line 1315
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v10, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1316
    .local v2, ptAppend:Landroid/graphics/PointF;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v5, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->addPoint(Landroid/graphics/PointF;)V

    .line 1318
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getStrokePointSize()I

    move-result v5

    if-le v5, v9, :cond_b

    .line 1319
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1320
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->recognize()V

    .line 1327
    :cond_7
    :goto_4
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->removeLastPoint()V

    .line 1333
    .end local v2           #ptAppend:Landroid/graphics/PointF;
    :cond_8
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getStrokePointSize()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getStrokePointSize()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-gt v5, v9, :cond_0

    .line 1337
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurX:I
    invoke-static {v6}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$500(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_nCurY:I
    invoke-static {v7}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$600(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->dispathTouchPoint(FF)Z

    .line 1339
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$000(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-ne v5, v4, :cond_9

    .line 1340
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$000(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1342
    :cond_9
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_StrokePaintPath:Landroid/graphics/Path;
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$700(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 1344
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    if-eqz v4, :cond_0

    .line 1345
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->reset()V

    goto/16 :goto_0

    .end local v0           #bTranparent:Z
    :cond_a
    move v0, v5

    .line 1307
    goto/16 :goto_3

    .line 1321
    .restart local v0       #bTranparent:Z
    .restart local v2       #ptAppend:Landroid/graphics/PointF;
    :cond_b
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_stroke:Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStroke;->getStrokePointSize()I

    move-result v5

    if-lez v5, :cond_7

    if-nez v0, :cond_7

    .line 1322
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1323
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->m_SIP:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;->access$100(Lcom/htc/android/htcime/ezsip/handwriting/PPStrokeView;)Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->getSymbolCandidate()V

    goto/16 :goto_4

    .line 1266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
