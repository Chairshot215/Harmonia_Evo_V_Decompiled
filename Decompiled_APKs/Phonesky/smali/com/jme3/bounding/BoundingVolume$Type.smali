.class public final enum Lcom/jme3/bounding/BoundingVolume$Type;
.super Ljava/lang/Enum;
.source "BoundingVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/bounding/BoundingVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/bounding/BoundingVolume$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/bounding/BoundingVolume$Type;

.field public static final enum AABB:Lcom/jme3/bounding/BoundingVolume$Type;

.field public static final enum Capsule:Lcom/jme3/bounding/BoundingVolume$Type;

.field public static final enum OBB:Lcom/jme3/bounding/BoundingVolume$Type;

.field public static final enum Sphere:Lcom/jme3/bounding/BoundingVolume$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/jme3/bounding/BoundingVolume$Type;

    const-string v1, "Sphere"

    invoke-direct {v0, v1, v2}, Lcom/jme3/bounding/BoundingVolume$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bounding/BoundingVolume$Type;->Sphere:Lcom/jme3/bounding/BoundingVolume$Type;

    .line 64
    new-instance v0, Lcom/jme3/bounding/BoundingVolume$Type;

    const-string v1, "AABB"

    invoke-direct {v0, v1, v3}, Lcom/jme3/bounding/BoundingVolume$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bounding/BoundingVolume$Type;->AABB:Lcom/jme3/bounding/BoundingVolume$Type;

    .line 69
    new-instance v0, Lcom/jme3/bounding/BoundingVolume$Type;

    const-string v1, "OBB"

    invoke-direct {v0, v1, v4}, Lcom/jme3/bounding/BoundingVolume$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bounding/BoundingVolume$Type;->OBB:Lcom/jme3/bounding/BoundingVolume$Type;

    .line 74
    new-instance v0, Lcom/jme3/bounding/BoundingVolume$Type;

    const-string v1, "Capsule"

    invoke-direct {v0, v1, v5}, Lcom/jme3/bounding/BoundingVolume$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bounding/BoundingVolume$Type;->Capsule:Lcom/jme3/bounding/BoundingVolume$Type;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jme3/bounding/BoundingVolume$Type;

    sget-object v1, Lcom/jme3/bounding/BoundingVolume$Type;->Sphere:Lcom/jme3/bounding/BoundingVolume$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/bounding/BoundingVolume$Type;->AABB:Lcom/jme3/bounding/BoundingVolume$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/bounding/BoundingVolume$Type;->OBB:Lcom/jme3/bounding/BoundingVolume$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/bounding/BoundingVolume$Type;->Capsule:Lcom/jme3/bounding/BoundingVolume$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jme3/bounding/BoundingVolume$Type;->$VALUES:[Lcom/jme3/bounding/BoundingVolume$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/bounding/BoundingVolume$Type;
    .locals 1
    .parameter

    .prologue
    .line 55
    const-class v0, Lcom/jme3/bounding/BoundingVolume$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/bounding/BoundingVolume$Type;

    return-object v0
.end method

.method public static values()[Lcom/jme3/bounding/BoundingVolume$Type;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/jme3/bounding/BoundingVolume$Type;->$VALUES:[Lcom/jme3/bounding/BoundingVolume$Type;

    invoke-virtual {v0}, [Lcom/jme3/bounding/BoundingVolume$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/bounding/BoundingVolume$Type;

    return-object v0
.end method
