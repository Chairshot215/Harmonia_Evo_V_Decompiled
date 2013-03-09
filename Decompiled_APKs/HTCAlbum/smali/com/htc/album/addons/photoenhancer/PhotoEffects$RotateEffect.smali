.class Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;
.super Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateEffect"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V
    .locals 0
    .parameter

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1018
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    return-void
.end method


# virtual methods
.method public applyeffect(Lcom/scalado/caps/Session;)V
    .locals 4
    .parameter "sess"

    .prologue
    .line 1020
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$600(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/Rotation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1021
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mRotation is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :goto_0
    return-void

    .line 1024
    :cond_0
    new-instance v0, Lcom/scalado/caps/filter/Rotate;

    invoke-direct {v0, p1}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    .line 1025
    .local v0, rotate:Lcom/scalado/caps/filter/Rotate;
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1026
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RotateEffect: rotate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$600(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/Rotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/caps/Rotation;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->access$600(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/Rotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    .line 1029
    invoke-virtual {v0}, Lcom/scalado/caps/filter/Rotate;->commit()V

    goto :goto_0
.end method
