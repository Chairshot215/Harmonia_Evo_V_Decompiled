.class public Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "TabPluginDLNA.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getActivityIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .restart local v0       #intent:Landroid/content/Intent;
    return-object v0
.end method

.method public getDrawableResSet()[I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x76t 0x2t 0x8t 0x2t
        0x75t 0x2t 0x8t 0x2t
        0x85t 0x3t 0x8t 0x2t
    .end array-data
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 49
    const/4 v2, 0x3

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 50
    .local v0, drawables:[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 51
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    const v3, 0x2080276

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 52
    const/4 v2, 0x1

    const v3, 0x2080275

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 53
    const/4 v2, 0x2

    const v3, 0x2080385

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 54
    return-object v0
.end method

.method public getIndicatorLabelRes()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f0b00b0

    return v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "com.htc.album-com.htc.album.TabPluginDLNA.TabPluginDLNA"

    return-object v0
.end method
