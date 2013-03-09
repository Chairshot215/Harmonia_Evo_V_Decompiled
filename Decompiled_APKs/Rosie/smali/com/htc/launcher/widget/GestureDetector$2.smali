.class Lcom/htc/launcher/widget/GestureDetector$2;
.super Ljava/lang/Object;
.source "GestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/widget/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/widget/GestureDetector;


# direct methods
.method constructor <init>(Lcom/htc/launcher/widget/GestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/htc/launcher/widget/GestureDetector$2;->this$0:Lcom/htc/launcher/widget/GestureDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/launcher/widget/GestureDetector$2;->this$0:Lcom/htc/launcher/widget/GestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/launcher/widget/GestureDetector;->access$332(Lcom/htc/launcher/widget/GestureDetector;F)F

    .line 223
    iget-object v0, p0, Lcom/htc/launcher/widget/GestureDetector$2;->this$0:Lcom/htc/launcher/widget/GestureDetector;

    #getter for: Lcom/htc/launcher/widget/GestureDetector;->mListener:Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;
    invoke-static {v0}, Lcom/htc/launcher/widget/GestureDetector;->access$200(Lcom/htc/launcher/widget/GestureDetector;)Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/widget/GestureDetector$2;->this$0:Lcom/htc/launcher/widget/GestureDetector;

    #getter for: Lcom/htc/launcher/widget/GestureDetector;->mScaleFactor:F
    invoke-static {v1}, Lcom/htc/launcher/widget/GestureDetector;->access$300(Lcom/htc/launcher/widget/GestureDetector;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;->onScale(F)Z

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 228
    iget-object v0, p0, Lcom/htc/launcher/widget/GestureDetector$2;->this$0:Lcom/htc/launcher/widget/GestureDetector;

    #getter for: Lcom/htc/launcher/widget/GestureDetector;->mIsMultiTouchMode:Z
    invoke-static {v0}, Lcom/htc/launcher/widget/GestureDetector;->access$100(Lcom/htc/launcher/widget/GestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/launcher/widget/GestureDetector$2;->this$0:Lcom/htc/launcher/widget/GestureDetector;

    #getter for: Lcom/htc/launcher/widget/GestureDetector;->mListener:Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;
    invoke-static {v0}, Lcom/htc/launcher/widget/GestureDetector;->access$200(Lcom/htc/launcher/widget/GestureDetector;)Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/launcher/widget/GestureDetector$OnMultiTouchListener;->onMultiTouch(FF)Z

    .line 231
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/launcher/widget/GestureDetector;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScaleBegin()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/widget/GestureDetector$2;->this$0:Lcom/htc/launcher/widget/GestureDetector;

    #setter for: Lcom/htc/launcher/widget/GestureDetector;->mIsMultiTouchMode:Z
    invoke-static {v0, v3}, Lcom/htc/launcher/widget/GestureDetector;->access$102(Lcom/htc/launcher/widget/GestureDetector;Z)Z

    .line 234
    iget-object v0, p0, Lcom/htc/launcher/widget/GestureDetector$2;->this$0:Lcom/htc/launcher/widget/GestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/launcher/widget/GestureDetector;->access$332(Lcom/htc/launcher/widget/GestureDetector;F)F

    .line 235
    return v3
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 239
    return-void
.end method
