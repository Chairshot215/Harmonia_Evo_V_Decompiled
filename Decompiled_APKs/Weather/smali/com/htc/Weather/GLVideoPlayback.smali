.class public Lcom/htc/Weather/GLVideoPlayback;
.super Ljava/lang/Object;
.source "GLVideoPlayback.java"


# static fields
.field private static mGLVideoPlayback:Lcom/htc/Weather/GLVideoPlayback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    :try_start_0
    const-string v1, "/system/lib/egl/libEGL_adreno200.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 16
    const-string v1, "/system/lib/egl/libGLESv2_adreno200.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 17
    const-string v1, "/system/lib/libGLVideoPlayback.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 19
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 20
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "GLVideoPlayback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/htc/Weather/GLVideoPlayback;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/htc/Weather/GLVideoPlayback;->mGLVideoPlayback:Lcom/htc/Weather/GLVideoPlayback;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/htc/Weather/GLVideoPlayback;

    invoke-direct {v0}, Lcom/htc/Weather/GLVideoPlayback;-><init>()V

    sput-object v0, Lcom/htc/Weather/GLVideoPlayback;->mGLVideoPlayback:Lcom/htc/Weather/GLVideoPlayback;

    .line 10
    :cond_0
    sget-object v0, Lcom/htc/Weather/GLVideoPlayback;->mGLVideoPlayback:Lcom/htc/Weather/GLVideoPlayback;

    return-object v0
.end method


# virtual methods
.method protected native FadeSwitchVideo(Ljava/lang/String;II)Z
.end method

.method protected native InitializeNativeState()Z
.end method

.method protected native InitializeSource(Ljava/lang/String;)Z
.end method

.method protected native TerminateNativeState()Z
.end method

.method protected native nativeHandleKey(I)Z
.end method

.method protected native renderFrame()Z
.end method

.method protected native scale(I)Z
.end method

.method protected native setNativeDimensions(II)Z
.end method

.method protected native setNativeRunState(I)Z
.end method

.method protected native setParameter(IIIIIIFFFF)Z
.end method

.method protected native startAnimation(II)Z
.end method
