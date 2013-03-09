.class public Lcom/jme3/scene/plugins/ogre/AnimData;
.super Ljava/lang/Object;
.source "AnimData.java"


# instance fields
.field public final anims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field public final skeleton:Lcom/jme3/animation/Skeleton;


# direct methods
.method public constructor <init>(Lcom/jme3/animation/Skeleton;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "skeleton"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/animation/Skeleton;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/animation/Animation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/animation/Animation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/jme3/scene/plugins/ogre/AnimData;->skeleton:Lcom/jme3/animation/Skeleton;

    .line 46
    iput-object p2, p0, Lcom/jme3/scene/plugins/ogre/AnimData;->anims:Ljava/util/ArrayList;

    .line 47
    return-void
.end method
