.class public final Lcom/jme3/system/AppSettings;
.super Ljava/util/HashMap;
.source "AppSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final defaults:Lcom/jme3/system/AppSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x18

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/jme3/system/AppSettings;

    invoke-direct {v0, v3}, Lcom/jme3/system/AppSettings;-><init>(Z)V

    sput-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    .line 127
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "Width"

    const/16 v2, 0x280

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "Height"

    const/16 v2, 0x1e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "BitsPerPixel"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "Frequency"

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "DepthBits"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "StencilBits"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "Samples"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "Fullscreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "Title"

    const-string v2, "jMonkey Engine 3.0"

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "Renderer"

    const-string v2, "LWJGL-OpenGL2"

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "AudioRenderer"

    const-string v2, "LWJGL"

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "DisableJoysticks"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "UseInput"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "VSync"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "FrameRate"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "SettingsDialogImage"

    const-string v2, "/com/jme3/app/Monkey.png"

    invoke-virtual {v0, v1, v2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "loadDefaults"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 157
    if-eqz p1, :cond_0

    .line 158
    sget-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->putAll(Ljava/util/Map;)V

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/jme3/system/AppSettings;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/jme3/system/AppSettings;->putAll(Ljava/util/Map;)V

    .line 173
    return-void
.end method

.method public getAudioRenderer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 700
    const-string v0, "AudioRenderer"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/jme3/system/AppSettings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 313
    .local v0, b:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 314
    const/4 v1, 0x0

    .line 317
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 620
    const-string v0, "Height"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/jme3/system/AppSettings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 299
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 300
    const/4 v1, 0x0

    .line 303
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/jme3/system/AppSettings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 331
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 612
    const-string v0, "Width"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public putInteger(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 338
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/jme3/system/AppSettings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    return-void
.end method

.method public setAudioRenderer(Ljava/lang/String;)V
    .locals 1
    .parameter "audioRenderer"

    .prologue
    .line 420
    const-string v0, "AudioRenderer"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public setFrameRate(I)V
    .locals 1
    .parameter "frameRate"

    .prologue
    .line 361
    const-string v0, "FrameRate"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    .line 362
    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 436
    const-string v0, "Height"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    .line 437
    return-void
.end method

.method public setResolution(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lcom/jme3/system/AppSettings;->setWidth(I)V

    .line 447
    invoke-virtual {p0, p2}, Lcom/jme3/system/AppSettings;->setHeight(I)V

    .line 448
    return-void
.end method

.method public setSamples(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 510
    const-string v0, "Samples"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    .line 511
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 428
    const-string v0, "Width"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    .line 429
    return-void
.end method

.method public useInput()Z
    .locals 1

    .prologue
    .line 596
    const-string v0, "UseInput"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
