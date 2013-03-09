.class Lcom/htc/album/addons/photoenhancer/PhotoEffects$SaturationEffect;
.super Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaturationEffect"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V
    .locals 0
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$SaturationEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$SaturationEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method


# virtual methods
.method public applyeffect(Lcom/scalado/caps/Session;)V
    .locals 5
    .parameter "sess"

    .prologue
    .line 693
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;->property:Ljava/util/Map;

    const-string v3, "value"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 694
    .local v0, level:F
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$SaturationEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saturation level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    new-instance v1, Lcom/scalado/caps/filter/clearshot/ColorBoost;

    invoke-direct {v1, p1}, Lcom/scalado/caps/filter/clearshot/ColorBoost;-><init>(Lcom/scalado/caps/Session;)V

    .line 698
    .local v1, saturationEffect:Lcom/scalado/caps/filter/clearshot/ColorBoost;
    invoke-virtual {v1, v0}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->set(F)V

    .line 699
    invoke-virtual {v1}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->commit()V

    .line 700
    return-void
.end method
