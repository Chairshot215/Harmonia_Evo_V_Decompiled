.class Lcom/htc/album/addons/photoenhancer/PhotoEffects$ColorAdjustEffect;
.super Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorAdjustEffect"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ColorAdjustEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ColorAdjustEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method


# virtual methods
.method public applyeffect(Lcom/scalado/caps/Session;)V
    .locals 7
    .parameter "sess"

    .prologue
    .line 961
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;->property:Ljava/util/Map;

    const-string v5, "Rvalue"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 962
    .local v3, r:F
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;->property:Ljava/util/Map;

    const-string v5, "Gvalue"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 963
    .local v2, g:F
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;->property:Ljava/util/Map;

    const-string v5, "Bvalue"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 964
    .local v0, b:F
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ColorAdjustEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v4}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 965
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Colorization r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", g="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", b="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_0
    new-instance v1, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;

    invoke-direct {v1, p1}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;-><init>(Lcom/scalado/caps/Session;)V

    .line 968
    .local v1, colorAdjust:Lcom/scalado/caps/filter/photoart/RGBColorAdjust;
    invoke-virtual {v1, v3, v2, v0}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->set(FFF)V

    .line 969
    invoke-virtual {v1}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->commit()V

    .line 970
    return-void
.end method
