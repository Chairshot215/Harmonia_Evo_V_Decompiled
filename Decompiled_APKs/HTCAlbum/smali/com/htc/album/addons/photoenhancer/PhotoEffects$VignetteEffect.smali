.class Lcom/htc/album/addons/photoenhancer/PhotoEffects$VignetteEffect;
.super Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VignetteEffect"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$VignetteEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$VignetteEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method


# virtual methods
.method public applyeffect(Lcom/scalado/caps/Session;)V
    .locals 22
    .parameter "sess"

    .prologue
    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;->property:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "level"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 718
    .local v8, level:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;->property:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "color"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 719
    .local v4, color:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;->property:Ljava/util/Map;

    move-object/from16 v18, v0

    const-string v19, "transition"

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 720
    .local v14, transition:F
    if-ltz v8, :cond_0

    const/16 v18, 0x0

    cmpg-float v18, v14, v18

    if-ltz v18, :cond_0

    const/high16 v18, 0x4170

    cmpl-float v18, v14, v18

    if-lez v18, :cond_1

    .line 721
    :cond_0
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "VignetteEffect: property error, level = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", transition = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :goto_0
    return-void

    .line 724
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$VignetteEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static/range {v18 .. v18}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 725
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Vignette level="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", color="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", transition="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v6

    .line 729
    .local v6, imageHeight:I
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v7

    .line 730
    .local v7, imageWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$VignetteEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static/range {v18 .. v18}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 731
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Vignette imageHeight="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", imageWidth="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_3
    const v18, 0x3d4ccccd

    int-to-float v0, v8

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x3e80

    add-float v10, v18, v19

    .line 735
    .local v10, n:F
    int-to-float v0, v6

    move/from16 v18, v0

    mul-float v11, v10, v18

    .line 736
    .local v11, nH:F
    int-to-float v0, v7

    move/from16 v18, v0

    mul-float v12, v10, v18

    .line 737
    .local v12, nW:F
    const/high16 v18, 0x3f80

    cmpg-float v18, v11, v18

    if-gez v18, :cond_4

    const/high16 v11, 0x3f80

    .line 738
    :cond_4
    const/high16 v18, 0x3f80

    cmpg-float v18, v12, v18

    if-gez v18, :cond_5

    const/high16 v12, 0x3f80

    .line 739
    :cond_5
    int-to-float v0, v7

    move/from16 v18, v0

    sub-float v18, v18, v12

    const/high16 v19, 0x4000

    div-float v16, v18, v19

    .line 740
    .local v16, x:F
    int-to-float v0, v6

    move/from16 v18, v0

    sub-float v18, v18, v11

    const/high16 v19, 0x4000

    div-float v17, v18, v19

    .line 741
    .local v17, y:F
    new-instance v13, Lcom/scalado/base/Rect;

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    float-to-int v0, v12

    move/from16 v20, v0

    float-to-int v0, v11

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/scalado/base/Rect;-><init>(IIII)V

    .line 742
    .local v13, region:Lcom/scalado/base/Rect;
    if-le v6, v7, :cond_6

    .line 743
    int-to-float v0, v7

    move/from16 v18, v0

    const/high16 v19, 0x3f80

    mul-float v18, v18, v19

    int-to-float v0, v6

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v14, v14, v18

    .line 747
    :cond_6
    if-nez v4, :cond_7

    .line 748
    new-instance v9, Lcom/scalado/base/Color;

    const/16 v18, 0xff

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/scalado/base/Color;-><init>(IIII)V

    .line 752
    .local v9, myColor:Lcom/scalado/base/Color;
    :goto_1
    new-instance v15, Lcom/scalado/caps/filter/photoart/Vignetting;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/scalado/caps/filter/photoart/Vignetting;-><init>(Lcom/scalado/caps/Session;)V

    .line 754
    .local v15, vignetteEffect:Lcom/scalado/caps/filter/photoart/Vignetting;
    :try_start_0
    invoke-virtual {v15, v13, v14, v9}, Lcom/scalado/caps/filter/photoart/Vignetting;->set(Lcom/scalado/base/Rect;FLcom/scalado/base/Color;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    invoke-virtual {v15}, Lcom/scalado/caps/filter/photoart/Vignetting;->commit()V

    goto/16 :goto_0

    .line 750
    .end local v9           #myColor:Lcom/scalado/base/Color;
    .end local v15           #vignetteEffect:Lcom/scalado/caps/filter/photoart/Vignetting;
    :cond_7
    new-instance v9, Lcom/scalado/base/Color;

    const/16 v18, 0xff

    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/scalado/base/Color;-><init>(IIII)V

    .restart local v9       #myColor:Lcom/scalado/base/Color;
    goto :goto_1

    .line 755
    .restart local v15       #vignetteEffect:Lcom/scalado/caps/filter/photoart/Vignetting;
    :catch_0
    move-exception v5

    .line 756
    .local v5, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v18

    const-string v19, "VignetteEffect set parameters error. Abort and skip this effect."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 758
    invoke-virtual {v15}, Lcom/scalado/caps/filter/photoart/Vignetting;->abort()V

    .line 759
    const/4 v15, 0x0

    .line 760
    goto/16 :goto_0
.end method
