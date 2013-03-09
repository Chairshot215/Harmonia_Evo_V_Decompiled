.class public Lcom/htc/album/TabPluginDevice/TabPluginDevice;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "TabPluginDevice.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getActivityIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/htc/album/Customizable/CustTabPluginDevice;->getPluginClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    return-object v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableResSet()[I
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/htc/album/Customizable/CustTabPluginDevice;->getDrawableResSet()[I

    move-result-object v0

    return-object v0
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/Customizable/CustTabPluginDevice;->getDrawableSet(Landroid/content/Context;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorLabelRes()I
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f0b0028

    return v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    return-object v0
.end method
