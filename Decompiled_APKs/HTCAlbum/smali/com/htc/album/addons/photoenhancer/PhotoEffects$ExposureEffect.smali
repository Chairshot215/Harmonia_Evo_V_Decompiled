.class Lcom/htc/album/addons/photoenhancer/PhotoEffects$ExposureEffect;
.super Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExposureEffect"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ExposureEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ExposureEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method


# virtual methods
.method public applyeffect(Lcom/scalado/caps/Session;)V
    .locals 5
    .parameter "sess"

    .prologue
    .line 680
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;->property:Ljava/util/Map;

    const-string v3, "value"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 681
    .local v1, level:F
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ExposureEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exposure level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_0
    new-instance v0, Lcom/scalado/caps/filter/clearshot/Exposure;

    invoke-direct {v0, p1}, Lcom/scalado/caps/filter/clearshot/Exposure;-><init>(Lcom/scalado/caps/Session;)V

    .line 685
    .local v0, exposureEffect:Lcom/scalado/caps/filter/clearshot/Exposure;
    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/clearshot/Exposure;->set(F)V

    .line 686
    sget-object v2, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->NATURAL:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    invoke-virtual {v0, v2}, Lcom/scalado/caps/filter/clearshot/Exposure;->setExposureMode(Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;)V

    .line 687
    invoke-virtual {v0}, Lcom/scalado/caps/filter/clearshot/Exposure;->commit()V

    .line 688
    return-void
.end method
