.class public Lcom/jme3/light/AmbientLight;
.super Lcom/jme3/light/Light;
.source "AmbientLight.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jme3/light/Light;-><init>()V

    return-void
.end method


# virtual methods
.method public computeLastDistance(Lcom/jme3/scene/Spatial;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 19
    return-void
.end method

.method public getType()Lcom/jme3/light/Light$Type;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/jme3/light/Light$Type;->Ambient:Lcom/jme3/light/Light$Type;

    return-object v0
.end method
