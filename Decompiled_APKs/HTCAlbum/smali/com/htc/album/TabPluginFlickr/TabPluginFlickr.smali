.class public Lcom/htc/album/TabPluginFlickr/TabPluginFlickr;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "TabPluginFlickr.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getActivityIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginFlickr/TabPluginFlickr;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/htc/album/SocialNetwork/ActivityMainFriends;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "service_name"

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "service_display"

    invoke-virtual {p0}, Lcom/htc/album/TabPluginFlickr/TabPluginFlickr;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method

.method public getDrawableResSet()[I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0xa6t 0x2t 0x8t 0x2t
        0xa5t 0x2t 0x8t 0x2t
        0x8bt 0x3t 0x8t 0x2t
    .end array-data
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 42
    const/4 v2, 0x3

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 43
    .local v0, drawables:[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginFlickr/TabPluginFlickr;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 44
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    const v3, 0x20802a6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 45
    const/4 v2, 0x1

    const v3, 0x20802a5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 46
    const/4 v2, 0x2

    const v3, 0x208038b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 47
    return-object v0
.end method

.method public getIndicatorLabelRes()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0b002b

    return v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/htc/album/TabPluginFlickr/TabPluginFlickr;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "com.htc.album-com.htc.album.TabPluginFlickr.TabPluginFlickr"

    return-object v0
.end method
