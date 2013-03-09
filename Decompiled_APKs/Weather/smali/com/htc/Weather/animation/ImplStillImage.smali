.class public Lcom/htc/Weather/animation/ImplStillImage;
.super Lcom/htc/Weather/animation/AbstractWeatherAnim;
.source "ImplStillImage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/Weather/animation/AbstractWeatherAnim;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public changeCondition(ILjava/lang/String;)Z
    .locals 1
    .parameter "condition"
    .parameter "path"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public changeConfig(ZZ)Z
    .locals 1
    .parameter "portrait"
    .parameter "fullScreen"

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/Weather/animation/ImplStillImage;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/RelativeLayout;ZZ)I
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "layout"
    .parameter "portrait"
    .parameter "fullScreen"

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public pause()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public play(ILjava/lang/String;)I
    .locals 1
    .parameter "condition"
    .parameter "path"

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public release()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public reset()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public resume()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public stop()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
