.class public Lcom/htc/album/TabPluginFacebook/TabPluginFacebook;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "TabPluginFacebook.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getActivityIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginFacebook/TabPluginFacebook;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/htc/album/SocialNetwork/ActivityMainFriends;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "service_name"

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v1, "service_display"

    invoke-virtual {p0}, Lcom/htc/album/TabPluginFacebook/TabPluginFacebook;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    return-object v0
.end method

.method public getDrawableResSet()[I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x99t 0x2t 0x8t 0x2t
        0x98t 0x2t 0x8t 0x2t
        0x87t 0x3t 0x8t 0x2t
    .end array-data
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 38
    const/4 v2, 0x3

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 39
    .local v0, drawables:[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginFacebook/TabPluginFacebook;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 40
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    const v3, 0x2080299

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 41
    const/4 v2, 0x1

    const v3, 0x2080298

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 42
    const/4 v2, 0x2

    const v3, 0x2080387

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 43
    return-object v0
.end method

.method public getIndicatorLabelRes()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f0b002a

    return v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/htc/album/TabPluginFacebook/TabPluginFacebook;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "com.htc.album-com.htc.album.TabPluginFacebook.TabPluginFacebook"

    return-object v0
.end method
