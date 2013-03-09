.class public Lcom/jme3/math/Eigen3f;
.super Ljava/lang/Object;
.source "Eigen3f.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field static final ROOT_THREE_DOUBLE:D = 0.0

.field private static final logger:Ljava/util/logging/Logger; = null

.field static final serialVersionUID:J = 0x1L


# instance fields
.field eigenValues:[F

.field eigenVectors:[Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/jme3/math/Eigen3f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Eigen3f;->logger:Ljava/util/logging/Logger;

    .line 49
    const-wide/high16 v0, 0x4008

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/jme3/math/Eigen3f;->ROOT_THREE_DOUBLE:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/jme3/math/Eigen3f;->eigenValues:[F

    .line 46
    new-array v0, v1, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Eigen3f;->eigenVectors:[Lcom/jme3/math/Vector3f;

    .line 54
    return-void
.end method
