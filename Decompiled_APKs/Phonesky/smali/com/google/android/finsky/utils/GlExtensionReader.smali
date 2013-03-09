.class public Lcom/google/android/finsky/utils/GlExtensionReader;
.super Ljava/lang/Object;
.source "GlExtensionReader.java"


# instance fields
.field private mWasSystemUpgraded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/google/android/finsky/utils/VendingUtils;->wasSystemUpgraded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/utils/GlExtensionReader;->mWasSystemUpgraded:Z

    .line 25
    return-void
.end method

.method private static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .locals 10
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "surfaceSize"
    .parameter "contextAttribs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/egl/EGL10;",
            "Ljavax/microedition/khronos/egl/EGLDisplay;",
            "Ljavax/microedition/khronos/egl/EGLConfig;",
            "[I[I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p5, glExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, p2, v7, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 91
    .local v1, context:Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v7, :cond_0

    .line 121
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    .line 97
    .local v6, surface:Ljavax/microedition/khronos/egl/EGLSurface;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v6, v7, :cond_1

    .line 98
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {p0, p1, v6, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 106
    const/16 v7, 0x1f03

    invoke-static {v7}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, extensionList:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 110
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 111
    .local v2, extension:Ljava/lang/String;
    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 116
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #extension:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 118
    invoke-interface {p0, p1, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 119
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0
.end method


# virtual methods
.method public getGlExtensions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 46
    .local v2, sortedExtensions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/google/android/finsky/utils/VendingPreferences;->CACHED_GL_EXTENSIONS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, cachedExtensions:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/google/android/finsky/utils/GlExtensionReader;->mWasSystemUpgraded:Z

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 48
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    :goto_0
    return-object v2

    .line 54
    :cond_0
    sget-object v4, Lcom/google/android/finsky/utils/VendingPreferences;->GL_DRIVER_CRASHED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/android/finsky/utils/GlExtensionReader;->mWasSystemUpgraded:Z

    if-nez v4, :cond_1

    .line 55
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 56
    .local v3, unsortedExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "_android_driver_crashed"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 67
    const-string v4, " "

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, flattened:Ljava/lang/String;
    sget-object v4, Lcom/google/android/finsky/utils/VendingPreferences;->CACHED_GL_EXTENSIONS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    .end local v1           #flattened:Ljava/lang/String;
    .end local v3           #unsortedExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    sget-object v4, Lcom/google/android/finsky/utils/VendingPreferences;->GL_DRIVER_CRASHED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/GlExtensionReader;->getGlExtensionsFromDriver()Ljava/util/Set;

    move-result-object v3

    .line 61
    .restart local v3       #unsortedExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v4, Lcom/google/android/finsky/utils/VendingPreferences;->GL_DRIVER_CRASHED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    goto :goto_1
.end method

.method getGlExtensionsFromDriver()Ljava/util/Set;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 127
    .local v5, glExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 128
    .local v0, egl:Ljavax/microedition/khronos/egl/EGL10;
    if-nez v0, :cond_0

    .line 129
    const-string v2, "Couldn\'t get EGL"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :goto_0
    return-object v5

    .line 134
    :cond_0
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 135
    .local v1, display:Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v2, 0x2

    new-array v14, v2, [I

    .line 136
    .local v14, version:[I
    invoke-interface {v0, v1, v14}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 139
    const/4 v2, 0x1

    new-array v13, v2, [I

    .line 140
    .local v13, numConfigs:[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    const-string v2, "Couldn\'t get EGL config count"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_1
    const/4 v2, 0x0

    aget v2, v13, v2

    new-array v10, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 147
    .local v10, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v2, 0x0

    aget v2, v13, v2

    invoke-interface {v0, v1, v10, v2, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 148
    const-string v2, "Couldn\'t get EGL configs"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_2
    const/4 v2, 0x5

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 162
    .local v3, surfaceSize:[I
    const/16 v6, 0x3098

    .line 163
    .local v6, EGL_CONTEXT_CLIENT_VERSION:I
    const/4 v2, 0x3

    new-array v11, v2, [I

    fill-array-data v11, :array_1

    .line 166
    .local v11, gles2:[I
    const/4 v2, 0x1

    new-array v9, v2, [I

    .line 168
    .local v9, attrib:[I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    const/4 v2, 0x0

    aget v2, v13, v2

    if-ge v12, v2, :cond_6

    .line 170
    aget-object v2, v10, v12

    const/16 v4, 0x3027

    invoke-interface {v0, v1, v2, v4, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 171
    const/4 v2, 0x0

    aget v2, v9, v2

    const/16 v4, 0x3050

    if-ne v2, v4, :cond_4

    .line 168
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 178
    :cond_4
    aget-object v2, v10, v12

    const/16 v4, 0x3033

    invoke-interface {v0, v1, v2, v4, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 179
    const/4 v2, 0x0

    aget v2, v9, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 183
    const/4 v8, 0x1

    .line 184
    .local v8, EGL_OPENGL_ES_BIT:I
    const/4 v7, 0x4

    .line 185
    .local v7, EGL_OPENGL_ES2_BIT:I
    aget-object v2, v10, v12

    const/16 v4, 0x3040

    invoke-interface {v0, v1, v2, v4, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 186
    const/4 v2, 0x0

    aget v2, v9, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 187
    aget-object v2, v10, v12

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/GlExtensionReader;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    .line 189
    :cond_5
    const/4 v2, 0x0

    aget v2, v9, v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 190
    aget-object v2, v10, v12

    move-object v4, v11

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/GlExtensionReader;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_2

    .line 195
    .end local v7           #EGL_OPENGL_ES2_BIT:I
    .end local v8           #EGL_OPENGL_ES_BIT:I
    :cond_6
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    goto/16 :goto_0

    .line 155
    :array_0
    .array-data 0x4
        0x57t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x56t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 163
    :array_1
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method
