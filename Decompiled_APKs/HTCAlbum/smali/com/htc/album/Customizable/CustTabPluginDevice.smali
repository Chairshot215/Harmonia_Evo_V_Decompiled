.class public Lcom/htc/album/Customizable/CustTabPluginDevice;
.super Ljava/lang/Object;
.source "CustTabPluginDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawableResSet()[I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0xa9t 0x2t 0x8t 0x2t
        0xa8t 0x2t 0x8t 0x2t
        0x8ct 0x3t 0x8t 0x2t
    .end array-data
.end method

.method public static getDrawableSet(Landroid/content/Context;)[Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"

    .prologue
    .line 11
    const/4 v2, 0x3

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 12
    .local v0, drawables:[Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 13
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    const v3, 0x20802a9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 14
    const/4 v2, 0x1

    const v3, 0x20802a8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 15
    const/4 v2, 0x2

    const v3, 0x208038c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 16
    return-object v0
.end method

.method public static getPluginClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "com.htc.album.TabPluginDevice.ActivityMainLocal"

    return-object v0
.end method
