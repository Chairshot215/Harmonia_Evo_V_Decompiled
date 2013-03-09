.class public Lcom/htc/Weather/GLVideoControl$VideoRenderer;
.super Ljava/lang/Object;
.source "GLVideoControl.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/GLVideoControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoRenderer"
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/htc/Weather/GLVideoControl;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/GLVideoControl;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->count:I

    .line 308
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    iget-boolean v1, v1, Lcom/htc/Weather/GLVideoControl;->glExit:Z

    if-eqz v1, :cond_3

    .line 316
    const-string v1, "GLVideoControl"

    const-string v2, "Mac: prepare to exit render thread"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 320
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    iget-boolean v1, v1, Lcom/htc/Weather/GLVideoControl;->glReturn:Z

    if-nez v1, :cond_1

    .line 322
    const-string v1, "GLVideoControl"

    const-string v2, "BRIANWeather : TerminateNativeState - Start"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    invoke-virtual {v1}, Lcom/htc/Weather/GLVideoControl;->TerminateNativeState()V

    .line 325
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/Weather/GLVideoControl;->glReturn:Z

    .line 326
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/Weather/GLVideoControl;->firstDrawFrame:Z

    .line 328
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    #getter for: Lcom/htc/Weather/GLVideoControl;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/Weather/GLVideoControl;->access$000(Lcom/htc/Weather/GLVideoControl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    iget v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->count:I

    if-nez v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    #getter for: Lcom/htc/Weather/GLVideoControl;->mainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/Weather/GLVideoControl;->access$000(Lcom/htc/Weather/GLVideoControl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 333
    :cond_0
    const-string v1, "GLVideoControl"

    const-string v2, "BRIANWeather : TerminateNativeState - End"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_1
    const-string v1, "GLVideoControl"

    const-string v2, "Mac: render thread,exit"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_2
    :goto_0
    return-void

    .line 339
    :cond_3
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    iget-boolean v1, v1, Lcom/htc/Weather/GLVideoControl;->firstDrawFrame:Z

    if-eqz v1, :cond_4

    .line 341
    const-string v1, "GLVideoControl"

    const-string v2, "BRIANMEI : firstDrawFrame - start"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/Weather/GLVideoControl;->setNativeRunState(I)V

    .line 345
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    invoke-virtual {v1}, Lcom/htc/Weather/GLVideoControl;->InitializeNativeState()V

    .line 347
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    iget-object v2, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    iget-object v2, v2, Lcom/htc/Weather/GLVideoControl;->mInitVideoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/Weather/GLVideoControl;->InitializeSource(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    sget-boolean v3, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    invoke-virtual {v1, v2, v3}, Lcom/htc/Weather/GLVideoControl;->setParameter(ZZ)V

    .line 352
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/Weather/GLVideoControl;->firstDrawFrame:Z

    .line 353
    const-string v1, "GLVideoControl"

    const-string v2, "BRIANMEI : firstDrawFrame - end"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_4
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    invoke-virtual {v1}, Lcom/htc/Weather/GLVideoControl;->renderFrame()Z

    move-result v1

    if-nez v1, :cond_5

    .line 358
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    invoke-virtual {v1}, Lcom/htc/Weather/GLVideoControl;->TerminateNativeState()V

    .line 359
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 364
    :cond_5
    iget v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->count:I

    if-gtz v1, :cond_2

    .line 365
    iget v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->count:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "GLVideoControl"

    const-string v2, "Error java.lang.RuntimeException VideoRenderer.onDrawFrame() !!"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 376
    iget-object v2, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    invoke-virtual {v2, p2, p3}, Lcom/htc/Weather/GLVideoControl;->setNativeDimensions(II)V

    .line 377
    const-string v2, "GLVideoControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BRIANMEI : onSurfaceChanged, w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,h = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iput v0, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->count:I

    .line 381
    if-ge p2, p3, :cond_0

    move v0, v1

    .line 383
    .local v0, isPortrait:Z
    :cond_0
    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    if-eqz v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    invoke-virtual {v2, v0, v1}, Lcom/htc/Weather/GLVideoControl;->setParameter(ZZ)V

    .line 395
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/htc/Weather/GLVideoControl$VideoRenderer;->this$0:Lcom/htc/Weather/GLVideoControl;

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isFullscreenMode:Z

    invoke-virtual {v1, v0, v2}, Lcom/htc/Weather/GLVideoControl;->setParameter(ZZ)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .parameter "gl"
    .parameter "config"

    .prologue
    const/4 v0, 0x0

    .line 398
    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 399
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 400
    return-void
.end method
