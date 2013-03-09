.class public Lcom/scalado/camera/utils/Translators;
.super Ljava/lang/Object;
.source "Translators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static translateFromScaladoImageConfig(Lcom/scalado/base/Image$Config;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "config was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    sget-object v0, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    if-ne p0, v0, :cond_1

    .line 47
    const/4 v0, 0x4

    .line 53
    :goto_0
    return v0

    .line 49
    :cond_1
    sget-object v0, Lcom/scalado/base/Image$Config;->YUV_422SP:Lcom/scalado/base/Image$Config;

    if-ne p0, v0, :cond_2

    .line 50
    const/16 v0, 0x10

    goto :goto_0

    .line 52
    :cond_2
    sget-object v0, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    if-ne p0, v0, :cond_3

    .line 53
    const/16 v0, 0x11

    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported config."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;
    .locals 3
    .parameter "size"

    .prologue
    .line 61
    new-instance v0, Lcom/scalado/base/Size;

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    return-object v0
.end method

.method public static translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;
    .locals 3
    .parameter "imageFormat"

    .prologue
    .line 20
    sparse-switch p0, :sswitch_data_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported imageformat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :sswitch_0
    sget-object v0, Lcom/scalado/base/Image$Config;->RGB_565_D:Lcom/scalado/base/Image$Config;

    .line 28
    :goto_0
    return-object v0

    .line 24
    :sswitch_1
    sget-object v0, Lcom/scalado/base/Image$Config;->YUV_422SP:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 26
    :sswitch_2
    sget-object v0, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 28
    :sswitch_3
    sget-object v0, Lcom/scalado/base/Image$Config;->YUV422_Y1UY2V:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 30
    :sswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colorformat YV12 is currently not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
        0x14 -> :sswitch_3
        0x32315659 -> :sswitch_4
    .end sparse-switch
.end method
