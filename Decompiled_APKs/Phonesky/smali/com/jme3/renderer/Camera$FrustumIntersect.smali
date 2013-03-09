.class public final enum Lcom/jme3/renderer/Camera$FrustumIntersect;
.super Ljava/lang/Enum;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/renderer/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrustumIntersect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/renderer/Camera$FrustumIntersect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/renderer/Camera$FrustumIntersect;

.field public static final enum Inside:Lcom/jme3/renderer/Camera$FrustumIntersect;

.field public static final enum Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

.field public static final enum Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/jme3/renderer/Camera$FrustumIntersect;

    const-string v1, "Outside"

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Camera$FrustumIntersect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    .line 84
    new-instance v0, Lcom/jme3/renderer/Camera$FrustumIntersect;

    const-string v1, "Inside"

    invoke-direct {v0, v1, v3}, Lcom/jme3/renderer/Camera$FrustumIntersect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->Inside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    .line 89
    new-instance v0, Lcom/jme3/renderer/Camera$FrustumIntersect;

    const-string v1, "Intersects"

    invoke-direct {v0, v1, v4}, Lcom/jme3/renderer/Camera$FrustumIntersect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jme3/renderer/Camera$FrustumIntersect;

    sget-object v1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Inside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->$VALUES:[Lcom/jme3/renderer/Camera$FrustumIntersect;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/renderer/Camera$FrustumIntersect;
    .locals 1
    .parameter

    .prologue
    .line 73
    const-class v0, Lcom/jme3/renderer/Camera$FrustumIntersect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/Camera$FrustumIntersect;

    return-object v0
.end method

.method public static values()[Lcom/jme3/renderer/Camera$FrustumIntersect;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->$VALUES:[Lcom/jme3/renderer/Camera$FrustumIntersect;

    invoke-virtual {v0}, [Lcom/jme3/renderer/Camera$FrustumIntersect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/renderer/Camera$FrustumIntersect;

    return-object v0
.end method
