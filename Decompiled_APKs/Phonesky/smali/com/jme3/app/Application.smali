.class public Lcom/jme3/app/Application;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Lcom/jme3/system/SystemListener;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected assetManager:Lcom/jme3/asset/AssetManager;

.field protected audioRenderer:Lcom/jme3/audio/AudioRenderer;

.field protected cam:Lcom/jme3/renderer/Camera;

.field protected context:Lcom/jme3/system/JmeContext;

.field protected guiViewPort:Lcom/jme3/renderer/ViewPort;

.field protected inputEnabled:Z

.field protected inputManager:Lcom/jme3/input/InputManager;

.field protected joyInput:Lcom/jme3/input/JoyInput;

.field protected keyInput:Lcom/jme3/input/KeyInput;

.field protected listener:Lcom/jme3/audio/Listener;

.field protected mouseInput:Lcom/jme3/input/MouseInput;

.field protected pauseOnFocus:Z

.field protected paused:Z

.field protected renderManager:Lcom/jme3/renderer/RenderManager;

.field protected renderer:Lcom/jme3/renderer/Renderer;

.field protected settings:Lcom/jme3/system/AppSettings;

.field protected speed:F

.field protected stateManager:Lcom/jme3/app/state/AppStateManager;

.field private final taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/jme3/app/AppTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected timer:Lcom/jme3/system/Timer;

.field protected touchInput:Lcom/jme3/input/TouchInput;

.field protected viewPort:Lcom/jme3/renderer/ViewPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/jme3/app/Application;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/app/Application;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/jme3/system/NanoTimer;

    invoke-direct {v0}, Lcom/jme3/system/NanoTimer;-><init>()V

    iput-object v0, p0, Lcom/jme3/app/Application;->timer:Lcom/jme3/system/Timer;

    .line 85
    iput-boolean v1, p0, Lcom/jme3/app/Application;->inputEnabled:Z

    .line 86
    iput-boolean v1, p0, Lcom/jme3/app/Application;->pauseOnFocus:Z

    .line 87
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jme3/app/Application;->speed:F

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/app/Application;->paused:Z

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/jme3/app/Application;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 102
    invoke-direct {p0}, Lcom/jme3/app/Application;->initStateManager()V

    .line 103
    return-void
.end method

.method private initAssetManager()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    const-string v1, "AssetConfigURL"

    invoke-virtual {v0, v1}, Lcom/jme3/system/AppSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    if-eqz v2, :cond_2

    .line 147
    const/4 v1, 0x0

    .line 149
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    if-nez v0, :cond_1

    .line 153
    const-class v0, Lcom/jme3/app/Application;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 154
    if-nez v0, :cond_1

    .line 155
    sget-object v0, Lcom/jme3/app/Application;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Unable to access AssetConfigURL in asset config:{0}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    :cond_0
    :goto_1
    return-void

    .line 150
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {v0}, Lcom/jme3/system/JmeSystem;->newAssetManager(Ljava/net/URL;)Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/Application;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/jme3/app/Application;->assetManager:Lcom/jme3/asset/AssetManager;

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com/jme3/asset/Desktop.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/system/JmeSystem;->newAssetManager(Ljava/net/URL;)Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/Application;->assetManager:Lcom/jme3/asset/AssetManager;

    goto :goto_1
.end method

.method private initAudio()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v0}, Lcom/jme3/system/AppSettings;->getAudioRenderer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getType()Lcom/jme3/system/JmeContext$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/system/JmeContext$Type;->Headless:Lcom/jme3/system/JmeContext$Type;

    if-eq v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    invoke-static {v0}, Lcom/jme3/system/JmeSystem;->newAudioRenderer(Lcom/jme3/system/AppSettings;)Lcom/jme3/audio/AudioRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/Application;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    .line 232
    iget-object v0, p0, Lcom/jme3/app/Application;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    invoke-interface {v0}, Lcom/jme3/audio/AudioRenderer;->initialize()V

    .line 233
    iget-object v0, p0, Lcom/jme3/app/Application;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    invoke-static {v0}, Lcom/jme3/audio/AudioContext;->setAudioRenderer(Lcom/jme3/audio/AudioRenderer;)V

    .line 235
    new-instance v0, Lcom/jme3/audio/Listener;

    invoke-direct {v0}, Lcom/jme3/audio/Listener;-><init>()V

    iput-object v0, p0, Lcom/jme3/app/Application;->listener:Lcom/jme3/audio/Listener;

    .line 236
    iget-object v0, p0, Lcom/jme3/app/Application;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    iget-object v1, p0, Lcom/jme3/app/Application;->listener:Lcom/jme3/audio/Listener;

    invoke-interface {v0, v1}, Lcom/jme3/audio/AudioRenderer;->setListener(Lcom/jme3/audio/Listener;)V

    .line 238
    :cond_0
    return-void
.end method

.method private initCamera()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 246
    new-instance v1, Lcom/jme3/renderer/Camera;

    iget-object v2, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v2}, Lcom/jme3/system/AppSettings;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v3}, Lcom/jme3/system/AppSettings;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/jme3/renderer/Camera;-><init>(II)V

    iput-object v1, p0, Lcom/jme3/app/Application;->cam:Lcom/jme3/renderer/Camera;

    .line 248
    iget-object v1, p0, Lcom/jme3/app/Application;->cam:Lcom/jme3/renderer/Camera;

    const/high16 v2, 0x4234

    iget-object v3, p0, Lcom/jme3/app/Application;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v3}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/jme3/app/Application;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v4}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    const/high16 v5, 0x447a

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jme3/renderer/Camera;->setFrustumPerspective(FFFF)V

    .line 249
    iget-object v1, p0, Lcom/jme3/app/Application;->cam:Lcom/jme3/renderer/Camera;

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x4120

    invoke-direct {v2, v6, v6, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v2}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    .line 250
    iget-object v1, p0, Lcom/jme3/app/Application;->cam:Lcom/jme3/renderer/Camera;

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2, v6, v6, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/renderer/Camera;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 252
    new-instance v1, Lcom/jme3/renderer/RenderManager;

    iget-object v2, p0, Lcom/jme3/app/Application;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-direct {v1, v2}, Lcom/jme3/renderer/RenderManager;-><init>(Lcom/jme3/renderer/Renderer;)V

    iput-object v1, p0, Lcom/jme3/app/Application;->renderManager:Lcom/jme3/renderer/RenderManager;

    .line 254
    iget-object v1, p0, Lcom/jme3/app/Application;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v2, p0, Lcom/jme3/app/Application;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v1, v2}, Lcom/jme3/renderer/RenderManager;->setTimer(Lcom/jme3/system/Timer;)V

    .line 255
    iget-object v1, p0, Lcom/jme3/app/Application;->renderManager:Lcom/jme3/renderer/RenderManager;

    const-string v2, "Default"

    iget-object v3, p0, Lcom/jme3/app/Application;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/renderer/RenderManager;->createMainView(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/app/Application;->viewPort:Lcom/jme3/renderer/ViewPort;

    .line 256
    iget-object v1, p0, Lcom/jme3/app/Application;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v1, v8, v8, v8}, Lcom/jme3/renderer/ViewPort;->setClearFlags(ZZZ)V

    .line 259
    new-instance v0, Lcom/jme3/renderer/Camera;

    iget-object v1, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v1}, Lcom/jme3/system/AppSettings;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v2}, Lcom/jme3/system/AppSettings;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Camera;-><init>(II)V

    .line 260
    .local v0, guiCam:Lcom/jme3/renderer/Camera;
    iget-object v1, p0, Lcom/jme3/app/Application;->renderManager:Lcom/jme3/renderer/RenderManager;

    const-string v2, "Gui Default"

    invoke-virtual {v1, v2, v0}, Lcom/jme3/renderer/RenderManager;->createPostView(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/app/Application;->guiViewPort:Lcom/jme3/renderer/ViewPort;

    .line 261
    iget-object v1, p0, Lcom/jme3/app/Application;->guiViewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v1, v7, v7, v7}, Lcom/jme3/renderer/ViewPort;->setClearFlags(ZZZ)V

    .line 262
    return-void
.end method

.method private initDisplay()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getSettings()Lcom/jme3/system/AppSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    .line 222
    iget-object v0, p0, Lcom/jme3/app/Application;->timer:Lcom/jme3/system/Timer;

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getTimer()Lcom/jme3/system/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/Application;->timer:Lcom/jme3/system/Timer;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/Application;->renderer:Lcom/jme3/renderer/Renderer;

    .line 227
    return-void
.end method

.method private initInput()V
    .locals 5

    .prologue
    .line 270
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getMouseInput()Lcom/jme3/input/MouseInput;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/Application;->mouseInput:Lcom/jme3/input/MouseInput;

    .line 271
    iget-object v0, p0, Lcom/jme3/app/Application;->mouseInput:Lcom/jme3/input/MouseInput;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/jme3/app/Application;->mouseInput:Lcom/jme3/input/MouseInput;

    invoke-interface {v0}, Lcom/jme3/input/MouseInput;->initialize()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getKeyInput()Lcom/jme3/input/KeyInput;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/Application;->keyInput:Lcom/jme3/input/KeyInput;

    .line 275
    iget-object v0, p0, Lcom/jme3/app/Application;->keyInput:Lcom/jme3/input/KeyInput;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/jme3/app/Application;->keyInput:Lcom/jme3/input/KeyInput;

    invoke-interface {v0}, Lcom/jme3/input/KeyInput;->initialize()V

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getTouchInput()Lcom/jme3/input/TouchInput;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/Application;->touchInput:Lcom/jme3/input/TouchInput;

    .line 279
    iget-object v0, p0, Lcom/jme3/app/Application;->touchInput:Lcom/jme3/input/TouchInput;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/jme3/app/Application;->touchInput:Lcom/jme3/input/TouchInput;

    invoke-interface {v0}, Lcom/jme3/input/TouchInput;->initialize()V

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    const-string v1, "DisableJoysticks"

    invoke-virtual {v0, v1}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getJoyInput()Lcom/jme3/input/JoyInput;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/Application;->joyInput:Lcom/jme3/input/JoyInput;

    .line 284
    iget-object v0, p0, Lcom/jme3/app/Application;->joyInput:Lcom/jme3/input/JoyInput;

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/jme3/app/Application;->joyInput:Lcom/jme3/input/JoyInput;

    invoke-interface {v0}, Lcom/jme3/input/JoyInput;->initialize()V

    .line 288
    :cond_3
    new-instance v0, Lcom/jme3/input/InputManager;

    iget-object v1, p0, Lcom/jme3/app/Application;->mouseInput:Lcom/jme3/input/MouseInput;

    iget-object v2, p0, Lcom/jme3/app/Application;->keyInput:Lcom/jme3/input/KeyInput;

    iget-object v3, p0, Lcom/jme3/app/Application;->joyInput:Lcom/jme3/input/JoyInput;

    iget-object v4, p0, Lcom/jme3/app/Application;->touchInput:Lcom/jme3/input/TouchInput;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/input/InputManager;-><init>(Lcom/jme3/input/MouseInput;Lcom/jme3/input/KeyInput;Lcom/jme3/input/JoyInput;Lcom/jme3/input/TouchInput;)V

    iput-object v0, p0, Lcom/jme3/app/Application;->inputManager:Lcom/jme3/input/InputManager;

    .line 289
    return-void
.end method

.method private initStateManager()V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Lcom/jme3/app/state/AppStateManager;

    invoke-direct {v0, p0}, Lcom/jme3/app/state/AppStateManager;-><init>(Lcom/jme3/app/Application;)V

    iput-object v0, p0, Lcom/jme3/app/Application;->stateManager:Lcom/jme3/app/state/AppStateManager;

    .line 296
    iget-object v0, p0, Lcom/jme3/app/Application;->stateManager:Lcom/jme3/app/state/AppStateManager;

    new-instance v1, Lcom/jme3/app/ResetStatsState;

    invoke-direct {v1}, Lcom/jme3/app/ResetStatsState;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jme3/app/state/AppStateManager;->attach(Lcom/jme3/app/state/AppState;)Z

    .line 297
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/jme3/app/Application;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {v0}, Lcom/jme3/app/state/AppStateManager;->cleanup()V

    .line 638
    invoke-virtual {p0}, Lcom/jme3/app/Application;->destroyInput()V

    .line 639
    iget-object v0, p0, Lcom/jme3/app/Application;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/jme3/app/Application;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    invoke-interface {v0}, Lcom/jme3/audio/AudioRenderer;->cleanup()V

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/jme3/app/Application;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v0}, Lcom/jme3/system/Timer;->reset()V

    .line 643
    return-void
.end method

.method protected destroyInput()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/jme3/app/Application;->mouseInput:Lcom/jme3/input/MouseInput;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/jme3/app/Application;->mouseInput:Lcom/jme3/input/MouseInput;

    invoke-interface {v0}, Lcom/jme3/input/MouseInput;->destroy()V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/jme3/app/Application;->keyInput:Lcom/jme3/input/KeyInput;

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/jme3/app/Application;->keyInput:Lcom/jme3/input/KeyInput;

    invoke-interface {v0}, Lcom/jme3/input/KeyInput;->destroy()V

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/jme3/app/Application;->joyInput:Lcom/jme3/input/JoyInput;

    if-eqz v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/jme3/app/Application;->joyInput:Lcom/jme3/input/JoyInput;

    invoke-interface {v0}, Lcom/jme3/input/JoyInput;->destroy()V

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/jme3/app/Application;->touchInput:Lcom/jme3/input/TouchInput;

    if-eqz v0, :cond_3

    .line 626
    iget-object v0, p0, Lcom/jme3/app/Application;->touchInput:Lcom/jme3/input/TouchInput;

    invoke-interface {v0}, Lcom/jme3/input/TouchInput;->destroy()V

    .line 628
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/app/Application;->inputManager:Lcom/jme3/input/InputManager;

    .line 629
    return-void
.end method

.method public getAudioRenderer()Lcom/jme3/audio/AudioRenderer;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/jme3/app/Application;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    return-object v0
.end method

.method public getContext()Lcom/jme3/system/JmeContext;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    return-object v0
.end method

.method public getInputManager()Lcom/jme3/input/InputManager;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/jme3/app/Application;->inputManager:Lcom/jme3/input/InputManager;

    return-object v0
.end method

.method public handleError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "errMsg"
    .parameter "t"

    .prologue
    .line 521
    sget-object v0, Lcom/jme3/app/Application;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    invoke-virtual {p0}, Lcom/jme3/app/Application;->stop()V

    .line 524
    return-void
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/jme3/app/Application;->assetManager:Lcom/jme3/asset/AssetManager;

    if-nez v0, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/jme3/app/Application;->initAssetManager()V

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/jme3/app/Application;->initDisplay()V

    .line 503
    invoke-direct {p0}, Lcom/jme3/app/Application;->initCamera()V

    .line 505
    iget-boolean v0, p0, Lcom/jme3/app/Application;->inputEnabled:Z

    if-eqz v0, :cond_1

    .line 506
    invoke-direct {p0}, Lcom/jme3/app/Application;->initInput()V

    .line 508
    :cond_1
    invoke-direct {p0}, Lcom/jme3/app/Application;->initAudio()V

    .line 512
    iget-object v0, p0, Lcom/jme3/app/Application;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v0}, Lcom/jme3/system/Timer;->reset()V

    .line 515
    return-void
.end method

.method public reshape(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/jme3/app/Application;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/renderer/RenderManager;->notifyReshape(II)V

    .line 451
    return-void
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    iget-object v1, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    invoke-interface {v0, v1}, Lcom/jme3/system/JmeContext;->setSettings(Lcom/jme3/system/AppSettings;)V

    .line 462
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->restart()V

    .line 463
    return-void
.end method

.method public setSettings(Lcom/jme3/system/AppSettings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    .line 181
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/jme3/system/AppSettings;->useInput()Z

    move-result v0

    iget-boolean v1, p0, Lcom/jme3/app/Application;->inputEnabled:Z

    if-eq v0, v1, :cond_2

    .line 184
    iget-boolean v0, p0, Lcom/jme3/app/Application;->inputEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jme3/app/Application;->inputEnabled:Z

    .line 185
    iget-boolean v0, p0, Lcom/jme3/app/Application;->inputEnabled:Z

    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/jme3/app/Application;->initInput()V

    .line 193
    :goto_1
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/jme3/app/Application;->destroyInput()V

    goto :goto_1

    .line 191
    :cond_2
    invoke-virtual {p1}, Lcom/jme3/system/AppSettings;->useInput()Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/app/Application;->inputEnabled:Z

    goto :goto_1
.end method

.method public start()V
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lcom/jme3/system/JmeContext$Type;->Display:Lcom/jme3/system/JmeContext$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/app/Application;->start(Lcom/jme3/system/JmeContext$Type;)V

    .line 369
    return-void
.end method

.method public start(Lcom/jme3/system/JmeContext$Type;)V
    .locals 4
    .parameter "contextType"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    sget-object v0, Lcom/jme3/app/Application;->logger:Ljava/util/logging/Logger;

    const-string v1, "start() called when application already created!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 390
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    if-nez v0, :cond_1

    .line 383
    new-instance v0, Lcom/jme3/system/AppSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/jme3/system/AppSettings;-><init>(Z)V

    iput-object v0, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    .line 386
    :cond_1
    sget-object v0, Lcom/jme3/app/Application;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Starting application: {0}"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/jme3/app/Application;->settings:Lcom/jme3/system/AppSettings;

    invoke-static {v0, p1}, Lcom/jme3/system/JmeSystem;->newContext(Lcom/jme3/system/AppSettings;Lcom/jme3/system/JmeContext$Type;)Lcom/jme3/system/JmeContext;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    .line 388
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0, p0}, Lcom/jme3/system/JmeContext;->setSystemListener(Lcom/jme3/system/SystemListener;)V

    .line 389
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jme3/system/JmeContext;->create(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/app/Application;->stop(Z)V

    .line 475
    return-void
.end method

.method public stop(Z)V
    .locals 4
    .parameter "waitFor"

    .prologue
    .line 483
    sget-object v0, Lcom/jme3/app/Application;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Closing application: {0}"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/jme3/app/Application;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0, p1}, Lcom/jme3/system/JmeContext;->destroy(Z)V

    .line 485
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 576
    iget-object v1, p0, Lcom/jme3/app/Application;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    invoke-static {v1}, Lcom/jme3/audio/AudioContext;->setAudioRenderer(Lcom/jme3/audio/AudioRenderer;)V

    .line 578
    iget-object v1, p0, Lcom/jme3/app/Application;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/AppTask;

    .line 580
    .local v0, task:Lcom/jme3/app/AppTask;,"Lcom/jme3/app/AppTask<*>;"
    :cond_0
    if-nez v0, :cond_2

    .line 599
    :goto_0
    iget v1, p0, Lcom/jme3/app/Application;->speed:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jme3/app/Application;->paused:Z

    if-eqz v1, :cond_4

    .line 613
    :cond_1
    :goto_1
    return-void

    .line 581
    :cond_2
    invoke-virtual {v0}, Lcom/jme3/app/AppTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 582
    iget-object v1, p0, Lcom/jme3/app/Application;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/jme3/app/AppTask;,"Lcom/jme3/app/AppTask<*>;"
    check-cast v0, Lcom/jme3/app/AppTask;

    .line 583
    .restart local v0       #task:Lcom/jme3/app/AppTask;,"Lcom/jme3/app/AppTask<*>;"
    if-nez v0, :cond_2

    goto :goto_0

    .line 585
    :cond_3
    invoke-virtual {v0}, Lcom/jme3/app/AppTask;->invoke()V

    .line 586
    iget-object v1, p0, Lcom/jme3/app/Application;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/jme3/app/AppTask;,"Lcom/jme3/app/AppTask<*>;"
    check-cast v0, Lcom/jme3/app/AppTask;

    .restart local v0       #task:Lcom/jme3/app/AppTask;,"Lcom/jme3/app/AppTask<*>;"
    if-nez v0, :cond_0

    goto :goto_0

    .line 602
    :cond_4
    iget-object v1, p0, Lcom/jme3/app/Application;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v1}, Lcom/jme3/system/Timer;->update()V

    .line 604
    iget-boolean v1, p0, Lcom/jme3/app/Application;->inputEnabled:Z

    if-eqz v1, :cond_5

    .line 605
    iget-object v1, p0, Lcom/jme3/app/Application;->inputManager:Lcom/jme3/input/InputManager;

    iget-object v2, p0, Lcom/jme3/app/Application;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v2}, Lcom/jme3/system/Timer;->getTimePerFrame()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/input/InputManager;->update(F)V

    .line 608
    :cond_5
    iget-object v1, p0, Lcom/jme3/app/Application;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    if-eqz v1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/jme3/app/Application;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    iget-object v2, p0, Lcom/jme3/app/Application;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v2}, Lcom/jme3/system/Timer;->getTimePerFrame()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/jme3/audio/AudioRenderer;->update(F)V

    goto :goto_1
.end method
