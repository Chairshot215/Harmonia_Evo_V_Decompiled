.class public Lcom/jme3/system/android/AndroidConfigChooser;
.super Ljava/lang/Object;
.source "AndroidConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;,
        Lcom/jme3/system/android/AndroidConfigChooser$BaseConfigChooser;,
        Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected bestConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field protected choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field protected clientOpenGLESVersion:I

.field protected fastestConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field protected pixelFormat:I

.field protected type:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

.field protected verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jme3/system/android/AndroidConfigChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->clientOpenGLESVersion:I

    .line 20
    iput-object v0, p0, Lcom/jme3/system/android/AndroidConfigChooser;->bestConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 21
    iput-object v0, p0, Lcom/jme3/system/android/AndroidConfigChooser;->fastestConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 22
    iput-object v0, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 25
    iput-boolean v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->verbose:Z

    .line 47
    iput-object p1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->type:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    .line 48
    return-void
.end method

.method private getOpenGLVersion(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGL10;)I
    .locals 3
    .parameter "conf"
    .parameter "display"
    .parameter "egl"

    .prologue
    .line 135
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 136
    .local v1, value:[I
    const/4 v0, 0x1

    .line 138
    .local v0, result:I
    const/16 v2, 0x3040

    invoke-interface {p3, p2, p1, v2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 140
    const/4 v2, 0x0

    aget v2, v1, v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 141
    const/4 v0, 0x2

    .line 144
    :cond_0
    return v0
.end method

.method private getPixelFormat(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGL10;)I
    .locals 6
    .parameter "conf"
    .parameter "display"
    .parameter "egl"

    .prologue
    .line 108
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 109
    .local v1, value:[I
    const/4 v0, 0x4

    .line 111
    .local v0, result:I
    const/16 v2, 0x3024

    invoke-interface {p3, p2, p1, v2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 112
    const/4 v2, 0x0

    aget v2, v1, v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 126
    :cond_0
    iget-boolean v2, p0, Lcom/jme3/system/android/AndroidConfigChooser;->verbose:Z

    if-eqz v2, :cond_1

    .line 127
    sget-object v2, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Using PixelFormat {0}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    :cond_1
    const/4 v2, -0x2

    return v2
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 2
    .parameter "egl"
    .parameter "display"

    .prologue
    .line 55
    sget-object v0, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    const-string v1, "GLSurfaceView asks for egl config, returning: "

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v0, p2, p1}, Lcom/jme3/system/android/AndroidConfigChooser;->logEGLConfig(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 57
    iget-object v0, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method public findConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    .locals 11
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x5

    const/4 v10, 0x1

    const/16 v8, 0x10

    const/4 v7, 0x0

    const/16 v2, 0x8

    .line 69
    iget-object v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->type:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    sget-object v3, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;->BEST:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    if-ne v1, v3, :cond_1

    .line 70
    new-instance v0, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;

    const/16 v6, 0x20

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;-><init>(Lcom/jme3/system/android/AndroidConfigChooser;IIIIII)V

    .line 71
    .local v0, compChooser:Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;
    invoke-virtual {v0, p1, p2}, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 73
    iget-object v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_0

    .line 74
    new-instance v0, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;

    .end local v0           #compChooser:Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;
    const/16 v6, 0x20

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v7

    invoke-direct/range {v0 .. v7}, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;-><init>(Lcom/jme3/system/android/AndroidConfigChooser;IIIIII)V

    .line 75
    .restart local v0       #compChooser:Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;
    invoke-virtual {v0, p1, p2}, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 76
    iget-object v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_0

    .line 77
    new-instance v0, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;

    .end local v0           #compChooser:Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;
    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;-><init>(Lcom/jme3/system/android/AndroidConfigChooser;IIIIII)V

    .line 78
    .restart local v0       #compChooser:Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;
    invoke-virtual {v0, p1, p2}, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 79
    iget-object v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_0

    .line 80
    new-instance v0, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;

    .end local v0           #compChooser:Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;
    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v7

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;-><init>(Lcom/jme3/system/android/AndroidConfigChooser;IIIIII)V

    .line 81
    .restart local v0       #compChooser:Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;
    invoke-virtual {v0, p1, p2}, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 86
    :cond_0
    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    const-string v2, "JME3 using best EGL configuration available here: "

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v1, :cond_2

    .line 94
    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    const-string v2, "JME3 using choosen config: "

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v1, p2, p1}, Lcom/jme3/system/android/AndroidConfigChooser;->logEGLConfig(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 96
    iget-object v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-direct {p0, v1, p2, p1}, Lcom/jme3/system/android/AndroidConfigChooser;->getPixelFormat(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGL10;)I

    move-result v1

    iput v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->pixelFormat:I

    .line 97
    iget-object v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-direct {p0, v1, p2, p1}, Lcom/jme3/system/android/AndroidConfigChooser;->getOpenGLVersion(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGL10;)I

    move-result v1

    iput v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->clientOpenGLESVersion:I

    move v7, v10

    .line 103
    :goto_1
    return v7

    .line 88
    .end local v0           #compChooser:Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;
    :cond_1
    new-instance v0, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;

    const/4 v5, 0x6

    move-object v2, v0

    move-object v3, p0

    move v6, v4

    move v9, v7

    invoke-direct/range {v2 .. v9}, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;-><init>(Lcom/jme3/system/android/AndroidConfigChooser;IIIIII)V

    .line 89
    .restart local v0       #compChooser:Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;
    invoke-virtual {v0, p1, p2}, Lcom/jme3/system/android/AndroidConfigChooser$ComponentSizeChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/system/android/AndroidConfigChooser;->choosenConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 90
    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    const-string v2, "JME3 using fastest EGL configuration available here: "

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    const-string v2, "###ERROR### Unable to get a valid OpenGL ES 2.0 config, nether Fastest nor Best found! Bug. Please report this."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 101
    iput v10, p0, Lcom/jme3/system/android/AndroidConfigChooser;->clientOpenGLESVersion:I

    .line 102
    iput v7, p0, Lcom/jme3/system/android/AndroidConfigChooser;->pixelFormat:I

    goto :goto_1
.end method

.method public getClientOpenGLESVersion()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/jme3/system/android/AndroidConfigChooser;->clientOpenGLESVersion:I

    return v0
.end method

.method public getPixelFormat()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/jme3/system/android/AndroidConfigChooser;->pixelFormat:I

    return v0
.end method

.method public logEGLConfig(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 7
    .parameter "conf"
    .parameter "display"
    .parameter "egl"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    new-array v0, v6, [I

    .line 157
    .local v0, value:[I
    const/16 v1, 0x3024

    invoke-interface {p3, p2, p1, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 158
    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    const-string v2, "EGL_RED_SIZE  = %d"

    new-array v3, v6, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 160
    const/16 v1, 0x3023

    invoke-interface {p3, p2, p1, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 161
    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    const-string v2, "EGL_GREEN_SIZE  = %d"

    new-array v3, v6, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 163
    const/16 v1, 0x3022

    invoke-interface {p3, p2, p1, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 164
    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    const-string v2, "EGL_BLUE_SIZE  = %d"

    new-array v3, v6, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 166
    const/16 v1, 0x3021

    invoke-interface {p3, p2, p1, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 167
    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    const-string v2, "EGL_ALPHA_SIZE  = %d"

    new-array v3, v6, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 169
    const/16 v1, 0x3025

    invoke-interface {p3, p2, p1, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 170
    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    const-string v2, "EGL_DEPTH_SIZE  = %d"

    new-array v3, v6, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 172
    const/16 v1, 0x3026

    invoke-interface {p3, p2, p1, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 173
    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    const-string v2, "EGL_STENCIL_SIZE  = %d"

    new-array v3, v6, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 175
    const/16 v1, 0x3040

    invoke-interface {p3, p2, p1, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 176
    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    const-string v2, "EGL_RENDERABLE_TYPE  = %d"

    new-array v3, v6, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 178
    const/16 v1, 0x3033

    invoke-interface {p3, p2, p1, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 179
    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser;->logger:Ljava/util/logging/Logger;

    const-string v2, "EGL_SURFACE_TYPE  = %d"

    new-array v3, v6, [Ljava/lang/Object;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 180
    return-void
.end method
