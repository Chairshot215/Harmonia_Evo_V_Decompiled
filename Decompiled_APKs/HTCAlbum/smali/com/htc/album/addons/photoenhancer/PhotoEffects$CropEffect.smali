.class Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropEffect;
.super Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CropEffect"
.end annotation


# instance fields
.field private size:Lcom/scalado/base/Size;

.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/base/Size;)V
    .locals 0
    .parameter
    .parameter "size"

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    .line 1003
    iput-object p2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropEffect;->size:Lcom/scalado/base/Size;

    .line 1004
    return-void
.end method


# virtual methods
.method public applyeffect(Lcom/scalado/caps/Session;)V
    .locals 6
    .parameter "sess"

    .prologue
    .line 1007
    new-instance v0, Lcom/scalado/caps/filter/Crop;

    invoke-direct {v0, p1}, Lcom/scalado/caps/filter/Crop;-><init>(Lcom/scalado/caps/Session;)V

    .line 1008
    .local v0, crop:Lcom/scalado/caps/filter/Crop;
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropEffect;->size:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 1009
    .local v1, x:I
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropEffect;->size:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 1010
    .local v2, y:I
    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CropEffect: Size w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropEffect;->size:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropEffect;->size:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_0
    new-instance v3, Lcom/scalado/base/Rect;

    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropEffect;->size:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropEffect;->size:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/scalado/base/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Lcom/scalado/caps/filter/Crop;->set(Lcom/scalado/base/Rect;)V

    .line 1014
    invoke-virtual {v0}, Lcom/scalado/caps/filter/Crop;->commit()V

    .line 1015
    return-void
.end method
