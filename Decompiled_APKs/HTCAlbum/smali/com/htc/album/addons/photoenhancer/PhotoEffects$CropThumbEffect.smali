.class Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropThumbEffect;
.super Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CropThumbEffect"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V
    .locals 0
    .parameter

    .prologue
    .line 973
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropThumbEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 973
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropThumbEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method


# virtual methods
.method public applyeffect(Lcom/scalado/caps/Session;)V
    .locals 10
    .parameter "sess"

    .prologue
    const/16 v9, 0xa

    .line 976
    new-instance v0, Lcom/scalado/caps/filter/Crop;

    invoke-direct {v0, p1}, Lcom/scalado/caps/filter/Crop;-><init>(Lcom/scalado/caps/Session;)V

    .line 977
    .local v0, crop:Lcom/scalado/caps/filter/Crop;
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropThumbEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 978
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Crop thumb"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 981
    .local v2, newSize:I
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v2, 0x2

    sub-int v4, v6, v7

    .line 982
    .local v4, x:I
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v2, 0x2

    sub-int v5, v6, v7

    .line 983
    .local v5, y:I
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropThumbEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 984
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rect x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", w,h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_1
    move v3, v2

    .line 987
    .local v3, w:I
    move v1, v2

    .line 988
    .local v1, h:I
    if-ge v3, v9, :cond_2

    .line 989
    const/16 v3, 0xa

    .line 991
    :cond_2
    if-ge v1, v9, :cond_3

    .line 992
    const/16 v1, 0xa

    .line 994
    :cond_3
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rect w="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    new-instance v6, Lcom/scalado/base/Rect;

    invoke-direct {v6, v4, v5, v3, v1}, Lcom/scalado/base/Rect;-><init>(IIII)V

    invoke-virtual {v0, v6}, Lcom/scalado/caps/filter/Crop;->set(Lcom/scalado/base/Rect;)V

    .line 996
    invoke-virtual {v0}, Lcom/scalado/caps/filter/Crop;->commit()V

    .line 997
    return-void
.end method
