.class public final Lcom/jme3/collision/bih/BIHTriangle;
.super Ljava/lang/Object;
.source "BIHTriangle.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final center:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/jme3/collision/bih/BIHTriangle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/collision/bih/BIHTriangle;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCenter()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jme3/collision/bih/BIHTriangle;->center:Lcom/jme3/math/Vector3f;

    return-object v0
.end method
