.class Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "FullScreenViewScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCenterAlign()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Align"
.end annotation


# instance fields
.field private frameDuration:J

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

.field private xBegin:F

.field private xEnd:F


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Ljava/lang/Object;Ljava/lang/String;FF)V
    .locals 5
    .parameter
    .parameter "host"
    .parameter "name"
    .parameter "xBegin"
    .parameter "xEnd"

    .prologue
    const/4 v1, 0x0

    .line 1214
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    .line 1215
    invoke-direct {p0, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    .line 1208
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    .line 1211
    const-wide/16 v1, 0x2e

    iput-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    .line 1216
    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    .line 1217
    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    .line 1219
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1220
    .local v0, d:F
    const/high16 v1, 0x437a

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 1222
    iget-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    .line 1225
    :cond_0
    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1227
    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {p1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onAlignBeginIRT()V

    .line 1229
    :cond_1
    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I
    invoke-static {p1, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1302(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I

    .line 1230
    return-void
.end method

.method private easeFunction(FFF)F
    .locals 4
    .parameter "currentProgress"
    .parameter "deltaPosition"
    .parameter "totalProgress"

    .prologue
    .line 1234
    div-float/2addr p1, p3

    .line 1235
    mul-float v1, p1, p1

    .line 1236
    .local v1, ts:F
    mul-float v0, v1, p1

    .line 1237
    .local v0, tc:F
    const/high16 v2, 0x3f80

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    const/high16 v3, -0x3f60

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x4120

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    const/high16 v3, -0x3ee0

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    const/high16 v3, 0x40a0

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    mul-float/2addr v2, p2

    return v2
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 2
    .parameter "cancelReason"

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    const/4 v1, 0x0

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z
    invoke-static {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1602(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z

    .line 1311
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 11
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 1242
    const/4 v1, 0x0

    .line 1244
    .local v1, x:F
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->firstFrameIndex:I

    if-ne p1, v4, :cond_0

    .line 1246
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 1249
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v4, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    if-eqz v4, :cond_0

    .line 1251
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v4, v4, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    invoke-interface {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;->onFullScreenViewScrollBeginIRT()V

    .line 1255
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    .line 1257
    .local v0, oldX:F
    int-to-long v4, p1

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->firstFrameIndex:I

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 1259
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    .line 1269
    :goto_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->frames:[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)[Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->centerFrameIndex:I
    invoke-static {v5}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$300(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4, v1, v10, v10}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->setPosition(FFF)V

    .line 1271
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #calls: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->layoutSceneAndBindItem()Z
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1100(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1273
    const-string v4, "FSVScene"

    const-string v5, "Align NG - layoutSceneAndBindItem"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    :cond_1
    int-to-long v4, p1

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->firstFrameIndex:I

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_6

    .line 1284
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #calls: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->doCurrentFrameHoming()V
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1500(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)V

    .line 1285
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->fullFilmView3D:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    invoke-static {v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1400(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->changeScrollStateOnUiThread(Lcom/htc/sunny2/fullfilmview/FullFilmView;I)V

    .line 1286
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->lastStatus:I
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1302(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;I)I

    .line 1287
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z
    invoke-static {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1602(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z

    .line 1288
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v2, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    if-eqz v2, :cond_3

    .line 1290
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    iget-object v2, v2, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->scrollListener:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;

    invoke-interface {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$ScrollListener;->onFullScreenViewScrollEndIRT()V

    .line 1292
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1294
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->imagePanAndZoomListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;
    invoke-static {v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1200(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;)Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;->onAlignEndIRT()V

    :cond_4
    move v2, v3

    .line 1301
    :goto_1
    return v2

    .line 1265
    :cond_5
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->firstFrameIndex:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xEnd:F

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->xBegin:F

    sub-float/2addr v6, v7

    iget-wide v7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->frameDuration:J

    long-to-float v7, v7

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->easeFunction(FFF)F

    move-result v5

    add-float v1, v4, v5

    .line 1266
    float-to-int v4, v1

    int-to-float v1, v4

    goto/16 :goto_0

    .line 1300
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene$1Align;->this$0:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    #setter for: Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->mInTransition:Z
    invoke-static {v3, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->access$1602(Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;Z)Z

    goto :goto_1
.end method
