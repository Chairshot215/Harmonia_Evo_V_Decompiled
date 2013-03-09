.class public Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;
.super Ljava/lang/Object;
.source "ImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/ImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageDefault"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mResID:I

.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/ImageProvider;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDLNA/ImageProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->this$0:Lcom/htc/album/TabPluginDLNA/ImageProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mResID:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ImageProvider$ImageDefault;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
