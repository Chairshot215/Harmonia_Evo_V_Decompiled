.class public Lcom/google/android/videochat/util/RendererUtil;
.super Ljava/lang/Object;
.source "RendererUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .parameter "op"

    .prologue
    .line 31
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_0

    .line 32
    const-string v1, "vclib:RendererUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_0
    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 38
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/google/android/videochat/util/RendererUtil;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 39
    .local v3, vertexShader:I
    if-nez v3, :cond_1

    move v2, v4

    .line 63
    :cond_0
    :goto_0
    return v2

    .line 42
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/google/android/videochat/util/RendererUtil;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 43
    .local v1, pixelShader:I
    if-nez v1, :cond_2

    move v2, v4

    .line 44
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 48
    .local v2, program:I
    if-eqz v2, :cond_0

    .line 49
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 50
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/google/android/videochat/util/RendererUtil;->checkGlError(Ljava/lang/String;)V

    .line 51
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 52
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/google/android/videochat/util/RendererUtil;->checkGlError(Ljava/lang/String;)V

    .line 53
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 54
    new-array v0, v6, [I

    .line 55
    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 56
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 57
    const-string v4, "vclib:RendererUtil"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v4, "vclib:RendererUtil"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 60
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 13
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 14
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 15
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 16
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 17
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 18
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 19
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 20
    const-string v2, "vclib:RendererUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string v2, "vclib:RendererUtil"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 23
    const/4 v1, 0x0

    .line 26
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method
