.class Lcom/htc/album/addons/photoenhancer/PhotoEffects$AutoEnhanceEffect;
.super Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoEnhanceEffect"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V
    .locals 0
    .parameter

    .prologue
    .line 856
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$AutoEnhanceEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$AutoEnhanceEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method


# virtual methods
.method public applyeffect(Lcom/scalado/caps/Session;)V
    .locals 16
    .parameter "sess"

    .prologue
    .line 858
    new-instance v1, Lcom/scalado/caps/filter/clearshot/AutoEnhance;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;-><init>(Lcom/scalado/caps/Session;)V

    .line 859
    .local v1, autoEnhance:Lcom/scalado/caps/filter/clearshot/AutoEnhance;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$AutoEnhanceEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 860
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AutoEnhance start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_0
    new-instance v10, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {v10}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;-><init>()V

    .line 869
    .local v10, parameters:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->setApplyWhiteBalance(Z)V

    .line 870
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->setAutoSourceWhite(Z)V

    .line 871
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->setApplyContrast(Z)V

    .line 872
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->setAutoContrast(Z)V

    .line 873
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->setApplyLocalBoost(Z)V

    .line 874
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->setAutoLocalBoost(Z)V

    .line 875
    new-instance v11, Lcom/scalado/base/Color;

    const/4 v12, 0x0

    const/16 v13, 0xff

    const/16 v14, 0xff

    const/16 v15, 0xff

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/scalado/base/Color;-><init>(IIII)V

    invoke-virtual {v10, v11}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->setTargetWhite(Lcom/scalado/base/Color;)V

    .line 876
    invoke-virtual {v1, v10}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->set(Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$AutoEnhanceEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 879
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AutoEnhance: Render start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_1
    new-instance v8, Lcom/scalado/base/Image;

    new-instance v11, Lcom/scalado/base/Size;

    const/16 v12, 0x8

    const/16 v13, 0x8

    invoke-direct {v11, v12, v13}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v12, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v8, v11, v12}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 884
    .local v8, img:Lcom/scalado/base/Image;
    new-instance v6, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v6, v8}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 885
    .local v6, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    const/4 v9, 0x0

    .line 887
    .local v9, itr:Lcom/scalado/base/Iterator;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v9

    .line 888
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AutoEnhance: iterator start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 890
    .local v3, beginTime:J
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/scalado/base/Iterator;->step(I)F

    .line 891
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AutoEnhance: iterator end process time = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v3

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$AutoEnhanceEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 899
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AutoEnhance: Render end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_2
    invoke-virtual {v1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->get()Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    move-result-object v10

    .line 902
    const/4 v9, 0x0

    .line 903
    const/4 v6, 0x0

    .line 904
    const/4 v8, 0x0

    .line 906
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->setAutoLocalBoost(Z)V

    .line 907
    invoke-virtual {v10}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->getSensitivityLevel()F

    move-result v11

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->setSensitivityLevel(F)V

    .line 908
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->setAutoSourceWhite(Z)V

    .line 910
    invoke-virtual {v10}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->getSourceWhite()Lcom/scalado/base/Color;

    move-result-object v5

    .line 911
    .local v5, color:Lcom/scalado/base/Color;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$AutoEnhanceEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 912
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "source white r="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/scalado/base/Color;->getR()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", g="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/scalado/base/Color;->getG()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", b="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/scalado/base/Color;->getB()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_3
    invoke-virtual {v5}, Lcom/scalado/base/Color;->getR()I

    move-result v11

    add-int/lit16 v11, v11, 0x80

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v5, v11}, Lcom/scalado/base/Color;->setR(I)V

    .line 915
    invoke-virtual {v5}, Lcom/scalado/base/Color;->getG()I

    move-result v11

    add-int/lit16 v11, v11, 0x80

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v5, v11}, Lcom/scalado/base/Color;->setG(I)V

    .line 916
    invoke-virtual {v5}, Lcom/scalado/base/Color;->getB()I

    move-result v11

    add-int/lit16 v11, v11, 0x80

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v5, v11}, Lcom/scalado/base/Color;->setB(I)V

    .line 918
    invoke-virtual {v1, v10}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->set(Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;)V

    .line 919
    invoke-virtual {v1}, Lcom/scalado/caps/filter/clearshot/AutoEnhance;->commit()V

    .line 921
    new-instance v2, Lcom/scalado/caps/filter/clearshot/AutoLevels;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/scalado/caps/filter/clearshot/AutoLevels;-><init>(Lcom/scalado/caps/Session;)V

    .line 922
    .local v2, autoLevels:Lcom/scalado/caps/filter/clearshot/AutoLevels;
    invoke-virtual {v2}, Lcom/scalado/caps/filter/clearshot/AutoLevels;->commit()V

    .line 923
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$AutoEnhanceEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v11}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 924
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AutoEnhance end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .end local v2           #autoLevels:Lcom/scalado/caps/filter/clearshot/AutoLevels;
    .end local v3           #beginTime:J
    .end local v5           #color:Lcom/scalado/base/Color;
    :cond_4
    :goto_0
    return-void

    .line 892
    :catch_0
    move-exception v7

    .line 893
    .local v7, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AutoEnhance: screen iterator fail"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v9, 0x0

    .line 895
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
