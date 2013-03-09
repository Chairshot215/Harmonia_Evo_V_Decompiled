.class abstract Lcom/jme3/system/android/AndroidConfigChooser$BaseConfigChooser;
.super Ljava/lang/Object;
.source "AndroidConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/system/android/AndroidConfigChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field private bClientOpenGLESVersionSet:Z

.field protected mConfigSpec:[I

.field final synthetic this$0:Lcom/jme3/system/android/AndroidConfigChooser;


# direct methods
.method public constructor <init>(Lcom/jme3/system/android/AndroidConfigChooser;[I)V
    .locals 1
    .parameter
    .parameter "configSpec"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/jme3/system/android/AndroidConfigChooser$BaseConfigChooser;->this$0:Lcom/jme3/system/android/AndroidConfigChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/system/android/AndroidConfigChooser$BaseConfigChooser;->bClientOpenGLESVersionSet:Z

    .line 200
    invoke-direct {p0, p2}, Lcom/jme3/system/android/AndroidConfigChooser$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/system/android/AndroidConfigChooser$BaseConfigChooser;->mConfigSpec:[I

    .line 201
    return-void
.end method

.method private filterConfigSpec([I)[I
    .locals 5
    .parameter "configSpec"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 235
    iget-boolean v2, p0, Lcom/jme3/system/android/AndroidConfigChooser$BaseConfigChooser;->bClientOpenGLESVersionSet:Z

    if-ne v2, v4, :cond_0

    .line 253
    .end local p1
    :goto_0
    return-object p1

    .line 242
    .restart local p1
    :cond_0
    array-length v0, p1

    .line 243
    .local v0, len:I
    add-int/lit8 v2, v0, 0x2

    new-array v1, v2, [I

    .line 244
    .local v1, newConfigSpec:[I
    add-int/lit8 v2, v0, -0x1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x3040

    aput v3, v1, v2

    .line 246
    const/4 v2, 0x4

    aput v2, v1, v0

    .line 249
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x3038

    aput v3, v1, v2

    .line 251
    iput-boolean v4, p0, Lcom/jme3/system/android/AndroidConfigChooser$BaseConfigChooser;->bClientOpenGLESVersionSet:Z

    move-object p1, v1

    .line 253
    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 204
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 205
    .local v5, num_config:[I
    iget-object v2, p0, Lcom/jme3/system/android/AndroidConfigChooser$BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    aget v4, v5, v4

    .line 212
    .local v4, numConfigs:I
    if-gtz v4, :cond_1

    .line 227
    :goto_0
    return-object v3

    .line 218
    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 219
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v2, p0, Lcom/jme3/system/android/AndroidConfigChooser$BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/jme3/system/android/AndroidConfigChooser$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    .local v6, config:Ljavax/microedition/khronos/egl/EGLConfig;
    move-object v3, v6

    .line 227
    goto :goto_0
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
