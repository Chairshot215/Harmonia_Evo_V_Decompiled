.class public Lcom/jme3/system/android/OGLESContext;
.super Ljava/lang/Object;
.source "OGLESContext.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/jme3/input/SoftTextDialogInput;
.implements Lcom/jme3/system/JmeContext;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final ESCAPE_EVENT:Ljava/lang/String;

.field protected autoFlush:Z

.field protected clientOpenGLESVersion:I

.field protected final created:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private firstDrawFrame:Z

.field protected listener:Lcom/jme3/system/SystemListener;

.field protected minFrameDuration:I

.field protected final needClose:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final renderable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected renderer:Lcom/jme3/renderer/android/OGLESShaderRenderer;

.field protected final settings:Lcom/jme3/system/AppSettings;

.field protected timer:Lcom/jme3/system/Timer;

.field protected verboseLogging:Z

.field protected view:Lcom/jme3/input/android/AndroidInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/jme3/system/android/OGLESContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/system/android/OGLESContext;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/jme3/system/android/OGLESContext;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/jme3/system/android/OGLESContext;->renderable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/jme3/system/android/OGLESContext;->needClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Lcom/jme3/system/AppSettings;

    invoke-direct {v0, v2}, Lcom/jme3/system/AppSettings;-><init>(Z)V

    iput-object v0, p0, Lcom/jme3/system/android/OGLESContext;->settings:Lcom/jme3/system/AppSettings;

    .line 87
    iput-boolean v2, p0, Lcom/jme3/system/android/OGLESContext;->autoFlush:Z

    .line 89
    iput-boolean v2, p0, Lcom/jme3/system/android/OGLESContext;->firstDrawFrame:Z

    .line 91
    iput v1, p0, Lcom/jme3/system/android/OGLESContext;->minFrameDuration:I

    .line 96
    iput v2, p0, Lcom/jme3/system/android/OGLESContext;->clientOpenGLESVersion:I

    .line 97
    iput-boolean v1, p0, Lcom/jme3/system/android/OGLESContext;->verboseLogging:Z

    .line 98
    const-string v0, "TouchEscape"

    iput-object v0, p0, Lcom/jme3/system/android/OGLESContext;->ESCAPE_EVENT:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public create(Z)V
    .locals 1
    .parameter "waitFor"

    .prologue
    .line 429
    if-eqz p1, :cond_0

    .line 430
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jme3/system/android/OGLESContext;->waitFor(Z)V

    .line 432
    :cond_0
    return-void
.end method

.method public createView(Lcom/jme3/input/android/AndroidInput;Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;Z)Landroid/opengl/GLSurfaceView;
    .locals 11
    .parameter "view"
    .parameter "configType"
    .parameter "eglConfigVerboseLogging"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/jme3/system/android/OGLESContext;->view:Lcom/jme3/input/android/AndroidInput;

    .line 143
    iput-boolean p3, p0, Lcom/jme3/system/android/OGLESContext;->verboseLogging:Z

    .line 145
    sget-object v0, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;->LEGACY:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    if-ne p2, v0, :cond_2

    .line 147
    const/4 v0, 0x2

    iput v0, p0, Lcom/jme3/system/android/OGLESContext;->clientOpenGLESVersion:I

    .line 148
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/jme3/input/android/AndroidInput;->setEGLContextClientVersion(I)V

    .line 150
    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/input/android/AndroidInput;->setEGLConfigChooser(IIIIII)V

    .line 151
    sget-object v0, Lcom/jme3/system/android/OGLESContext;->logger:Ljava/util/logging/Logger;

    const-string v1, "ConfigType.LEGACY using RGB565"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jme3/input/android/AndroidInput;->setFocusableInTouchMode(Z)V

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jme3/input/android/AndroidInput;->setFocusable(Z)V

    .line 190
    invoke-virtual {p1}, Lcom/jme3/input/android/AndroidInput;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 191
    invoke-virtual {p1, p0}, Lcom/jme3/input/android/AndroidInput;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 193
    .end local p1
    :cond_1
    :goto_1
    return-object p1

    .line 153
    .restart local p1
    :cond_2
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v9

    check-cast v9, Ljavax/microedition/khronos/egl/EGL10;

    .line 154
    .local v9, egl:Ljavax/microedition/khronos/egl/EGL10;
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v9, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v8

    .line 156
    .local v8, display:Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 157
    .local v10, version:[I
    invoke-interface {v9, v8, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 158
    sget-object v0, Lcom/jme3/system/android/OGLESContext;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Display EGL Version: {0}.{1}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v10, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v10, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_3
    :try_start_0
    new-instance v7, Lcom/jme3/system/android/AndroidConfigChooser;

    invoke-direct {v7, p2}, Lcom/jme3/system/android/AndroidConfigChooser;-><init>(Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;)V

    .line 165
    .local v7, configChooser:Lcom/jme3/system/android/AndroidConfigChooser;
    invoke-virtual {v7, v9, v8}, Lcom/jme3/system/android/AndroidConfigChooser;->findConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->listener:Lcom/jme3/system/SystemListener;

    const-string v1, "Unable to find suitable EGL config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/system/SystemListener;->handleError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    const/4 p1, 0x0

    .line 182
    .end local p1
    if-eqz v8, :cond_1

    .line 183
    invoke-interface {v9, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    goto :goto_1

    .line 170
    .restart local p1
    :cond_4
    :try_start_1
    invoke-virtual {v7}, Lcom/jme3/system/android/AndroidConfigChooser;->getClientOpenGLESVersion()I

    move-result v0

    iput v0, p0, Lcom/jme3/system/android/OGLESContext;->clientOpenGLESVersion:I

    .line 171
    iget v0, p0, Lcom/jme3/system/android/OGLESContext;->clientOpenGLESVersion:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    .line 172
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->listener:Lcom/jme3/system/SystemListener;

    const-string v1, "OpenGL ES 2.0 is not supported on this device"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/system/SystemListener;->handleError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    const/4 p1, 0x0

    .line 182
    .end local p1
    if-eqz v8, :cond_1

    .line 183
    invoke-interface {v9, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    goto :goto_1

    .line 178
    .restart local p1
    :cond_5
    :try_start_2
    iget v0, p0, Lcom/jme3/system/android/OGLESContext;->clientOpenGLESVersion:I

    invoke-virtual {p1, v0}, Lcom/jme3/input/android/AndroidInput;->setEGLContextClientVersion(I)V

    .line 179
    invoke-virtual {p1, v7}, Lcom/jme3/input/android/AndroidInput;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 180
    invoke-virtual {p1}, Lcom/jme3/input/android/AndroidInput;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/jme3/system/android/AndroidConfigChooser;->getPixelFormat()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    if-eqz v8, :cond_0

    .line 183
    invoke-interface {v9, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    goto/16 :goto_0

    .line 182
    .end local v7           #configChooser:Lcom/jme3/system/android/AndroidConfigChooser;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 183
    invoke-interface {v9, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    :cond_6
    throw v0
.end method

.method protected deinitInThread()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 269
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->renderable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 271
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->renderer:Lcom/jme3/renderer/android/OGLESShaderRenderer;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->renderer:Lcom/jme3/renderer/android/OGLESShaderRenderer;

    invoke-virtual {v2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->cleanup()V

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->listener:Lcom/jme3/system/SystemListener;

    invoke-interface {v2}, Lcom/jme3/system/SystemListener;->destroy()V

    .line 277
    iput-object v3, p0, Lcom/jme3/system/android/OGLESContext;->listener:Lcom/jme3/system/SystemListener;

    .line 278
    iput-object v3, p0, Lcom/jme3/system/android/OGLESContext;->renderer:Lcom/jme3/renderer/android/OGLESShaderRenderer;

    .line 279
    iput-object v3, p0, Lcom/jme3/system/android/OGLESContext;->timer:Lcom/jme3/system/Timer;

    .line 282
    sget-object v2, Lcom/jme3/system/android/OGLESContext;->logger:Ljava/util/logging/Logger;

    const-string v3, "Display destroyed."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->renderable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 285
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->view:Lcom/jme3/input/android/AndroidInput;

    invoke-virtual {v2}, Lcom/jme3/input/android/AndroidInput;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 286
    .local v0, ctx:Landroid/content/Context;
    instance-of v2, v0, Lcom/jme3/app/AndroidHarness;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 287
    check-cast v1, Lcom/jme3/app/AndroidHarness;

    .line 288
    .local v1, harness:Lcom/jme3/app/AndroidHarness;
    invoke-virtual {v1}, Lcom/jme3/app/AndroidHarness;->isFinishOnAppStop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    invoke-virtual {v1}, Lcom/jme3/app/AndroidHarness;->finish()V

    .line 293
    .end local v0           #ctx:Landroid/content/Context;
    .end local v1           #harness:Lcom/jme3/app/AndroidHarness;
    :cond_1
    return-void
.end method

.method public destroy(Z)V
    .locals 2
    .parameter "waitFor"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->needClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 445
    if-eqz p1, :cond_0

    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/system/android/OGLESContext;->waitFor(Z)V

    .line 448
    :cond_0
    return-void
.end method

.method public getJoyInput()Lcom/jme3/input/JoyInput;
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyInput()Lcom/jme3/input/KeyInput;
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/jme3/input/dummy/DummyKeyInput;

    invoke-direct {v0}, Lcom/jme3/input/dummy/DummyKeyInput;-><init>()V

    return-object v0
.end method

.method public getMouseInput()Lcom/jme3/input/MouseInput;
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lcom/jme3/input/dummy/DummyMouseInput;

    invoke-direct {v0}, Lcom/jme3/input/dummy/DummyMouseInput;-><init>()V

    return-object v0
.end method

.method public getRenderer()Lcom/jme3/renderer/Renderer;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->renderer:Lcom/jme3/renderer/android/OGLESShaderRenderer;

    return-object v0
.end method

.method public getSettings()Lcom/jme3/system/AppSettings;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->settings:Lcom/jme3/system/AppSettings;

    return-object v0
.end method

.method public getTimer()Lcom/jme3/system/Timer;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->timer:Lcom/jme3/system/Timer;

    return-object v0
.end method

.method public getTouchInput()Lcom/jme3/input/TouchInput;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->view:Lcom/jme3/input/android/AndroidInput;

    return-object v0
.end method

.method public getType()Lcom/jme3/system/JmeContext$Type;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/jme3/system/JmeContext$Type;->Display:Lcom/jme3/system/JmeContext$Type;

    return-object v0
.end method

.method protected initInThread()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 213
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    sget-object v2, Lcom/jme3/system/android/OGLESContext;->logger:Ljava/util/logging/Logger;

    const-string v3, "OGLESContext create"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 216
    sget-object v2, Lcom/jme3/system/android/OGLESContext;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running on thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->view:Lcom/jme3/input/android/AndroidInput;

    invoke-virtual {v2}, Lcom/jme3/input/android/AndroidInput;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 221
    .local v1, ctx:Landroid/content/Context;
    instance-of v2, v1, Lcom/jme3/app/AndroidHarness;

    if-eqz v2, :cond_0

    .line 222
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Lcom/jme3/system/android/OGLESContext$1;

    invoke-direct {v3, p0, v1}, Lcom/jme3/system/android/OGLESContext$1;-><init>(Lcom/jme3/system/android/OGLESContext;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 237
    :goto_0
    iget v2, p0, Lcom/jme3/system/android/OGLESContext;->clientOpenGLESVersion:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 238
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "OpenGL ES 2.0 is not supported on this device"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Lcom/jme3/system/android/OGLESContext$2;

    invoke-direct {v3, p0}, Lcom/jme3/system/android/OGLESContext$2;-><init>(Lcom/jme3/system/android/OGLESContext;)V

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    .line 241
    :cond_1
    new-instance v2, Lcom/jme3/system/android/AndroidTimer;

    invoke-direct {v2}, Lcom/jme3/system/android/AndroidTimer;-><init>()V

    iput-object v2, p0, Lcom/jme3/system/android/OGLESContext;->timer:Lcom/jme3/system/Timer;

    .line 242
    new-instance v2, Lcom/jme3/renderer/android/OGLESShaderRenderer;

    invoke-direct {v2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;-><init>()V

    iput-object v2, p0, Lcom/jme3/system/android/OGLESContext;->renderer:Lcom/jme3/renderer/android/OGLESShaderRenderer;

    .line 244
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->renderer:Lcom/jme3/renderer/android/OGLESShaderRenderer;

    invoke-virtual {v2, v7}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->setUseVA(Z)V

    .line 245
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->renderer:Lcom/jme3/renderer/android/OGLESShaderRenderer;

    iget-boolean v3, p0, Lcom/jme3/system/android/OGLESContext;->verboseLogging:Z

    invoke-virtual {v2, v3}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->setVerboseLogging(Z)V

    .line 247
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->renderer:Lcom/jme3/renderer/android/OGLESShaderRenderer;

    invoke-virtual {v2}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->initialize()V

    .line 248
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->listener:Lcom/jme3/system/SystemListener;

    invoke-interface {v2}, Lcom/jme3/system/SystemListener;->initialize()V

    .line 251
    instance-of v2, v1, Lcom/jme3/app/AndroidHarness;

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 252
    check-cast v2, Lcom/jme3/app/AndroidHarness;

    invoke-virtual {v2}, Lcom/jme3/app/AndroidHarness;->getJmeApplication()Lcom/jme3/app/Application;

    move-result-object v0

    .line 253
    .local v0, app:Lcom/jme3/app/Application;
    invoke-virtual {v0}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 254
    invoke-virtual {v0}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object v2

    const-string v3, "TouchEscape"

    new-array v4, v7, [Lcom/jme3/input/controls/Trigger;

    new-instance v5, Lcom/jme3/input/controls/TouchTrigger;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/jme3/input/controls/TouchTrigger;-><init>(I)V

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    .line 255
    invoke-virtual {v0}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object v2

    check-cast v1, Lcom/jme3/app/AndroidHarness;

    .end local v1           #ctx:Landroid/content/Context;
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "TouchEscape"

    aput-object v4, v3, v8

    invoke-virtual {v2, v1, v3}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    .line 259
    .end local v0           #app:Lcom/jme3/app/Application;
    :cond_2
    invoke-static {p0}, Lcom/jme3/system/JmeSystem;->setSoftTextDialogInput(Lcom/jme3/input/SoftTextDialogInput;)V

    .line 261
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->needClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 262
    iget-object v2, p0, Lcom/jme3/system/android/OGLESContext;->renderable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 263
    return-void
.end method

.method public isCreated()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isRenderable()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->renderable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    .line 379
    iget-object v5, p0, Lcom/jme3/system/android/OGLESContext;->needClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/jme3/system/android/OGLESContext;->deinitInThread()V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v5, p0, Lcom/jme3/system/android/OGLESContext;->renderable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 385
    iget-object v5, p0, Lcom/jme3/system/android/OGLESContext;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_2

    .line 386
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "onDrawFrame without create"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 389
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 391
    .local v3, milliStart:J
    iget-object v5, p0, Lcom/jme3/system/android/OGLESContext;->listener:Lcom/jme3/system/SystemListener;

    invoke-interface {v5}, Lcom/jme3/system/SystemListener;->update()V

    .line 396
    iget-boolean v5, p0, Lcom/jme3/system/android/OGLESContext;->firstDrawFrame:Z

    if-eqz v5, :cond_4

    .line 397
    iget-object v5, p0, Lcom/jme3/system/android/OGLESContext;->view:Lcom/jme3/input/android/AndroidInput;

    invoke-virtual {v5}, Lcom/jme3/input/android/AndroidInput;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 398
    .local v0, ctx:Landroid/content/Context;
    instance-of v5, v0, Lcom/jme3/app/AndroidHarness;

    if-eqz v5, :cond_3

    .line 399
    check-cast v0, Lcom/jme3/app/AndroidHarness;

    .end local v0           #ctx:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/jme3/app/AndroidHarness;->removeSplashScreen()V

    .line 401
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/jme3/system/android/OGLESContext;->firstDrawFrame:Z

    .line 404
    :cond_4
    iget-boolean v5, p0, Lcom/jme3/system/android/OGLESContext;->autoFlush:Z

    if-eqz v5, :cond_5

    .line 405
    iget-object v5, p0, Lcom/jme3/system/android/OGLESContext;->renderer:Lcom/jme3/renderer/android/OGLESShaderRenderer;

    invoke-virtual {v5}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->onFrame()V

    .line 408
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v3

    .line 411
    .local v1, milliDelta:J
    iget v5, p0, Lcom/jme3/system/android/OGLESContext;->minFrameDuration:I

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    .line 414
    :try_start_0
    iget v5, p0, Lcom/jme3/system/android/OGLESContext;->minFrameDuration:I

    int-to-long v5, v5

    sub-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 371
    sget-object v0, Lcom/jme3/system/android/OGLESContext;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GL Surface changed, width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v0, p2, p3}, Lcom/jme3/system/AppSettings;->setResolution(II)V

    .line 373
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->listener:Lcom/jme3/system/SystemListener;

    invoke-interface {v0, p2, p3}, Lcom/jme3/system/SystemListener;->reshape(II)V

    .line 374
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "cfg"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->renderer:Lcom/jme3/renderer/android/OGLESShaderRenderer;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->renderer:Lcom/jme3/renderer/android/OGLESShaderRenderer;

    invoke-virtual {v0}, Lcom/jme3/renderer/android/OGLESShaderRenderer;->resetGLObjects()V

    .line 210
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->created:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    sget-object v0, Lcom/jme3/system/android/OGLESContext;->logger:Ljava/util/logging/Logger;

    const-string v1, "GL Surface created, doing JME3 init"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/jme3/system/android/OGLESContext;->initInThread()V

    goto :goto_0

    .line 207
    :cond_1
    sget-object v0, Lcom/jme3/system/android/OGLESContext;->logger:Ljava/util/logging/Logger;

    const-string v1, "GL Surface already created"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public setSettings(Lcom/jme3/system/AppSettings;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v0, p1}, Lcom/jme3/system/AppSettings;->copyFrom(Lcom/jme3/system/AppSettings;)V

    .line 312
    return-void
.end method

.method public setSystemListener(Lcom/jme3/system/SystemListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/jme3/system/android/OGLESContext;->listener:Lcom/jme3/system/SystemListener;

    .line 317
    return-void
.end method

.method protected waitFor(Z)V
    .locals 2
    .parameter "createdVal"

    .prologue
    .line 455
    :goto_0
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext;->renderable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 457
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    goto :goto_0

    .line 461
    :cond_0
    return-void
.end method
