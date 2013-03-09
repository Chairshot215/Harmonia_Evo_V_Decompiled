.class public final enum Lcom/jme3/math/Plane$Side;
.super Ljava/lang/Enum;
.source "Plane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/math/Plane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Side"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/math/Plane$Side;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/math/Plane$Side;

.field public static final enum Negative:Lcom/jme3/math/Plane$Side;

.field public static final enum None:Lcom/jme3/math/Plane$Side;

.field public static final enum Positive:Lcom/jme3/math/Plane$Side;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/jme3/math/Plane$Side;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Plane$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/Plane$Side;->None:Lcom/jme3/math/Plane$Side;

    .line 57
    new-instance v0, Lcom/jme3/math/Plane$Side;

    const-string v1, "Positive"

    invoke-direct {v0, v1, v3}, Lcom/jme3/math/Plane$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/Plane$Side;->Positive:Lcom/jme3/math/Plane$Side;

    .line 58
    new-instance v0, Lcom/jme3/math/Plane$Side;

    const-string v1, "Negative"

    invoke-direct {v0, v1, v4}, Lcom/jme3/math/Plane$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jme3/math/Plane$Side;

    sget-object v1, Lcom/jme3/math/Plane$Side;->None:Lcom/jme3/math/Plane$Side;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/math/Plane$Side;->Positive:Lcom/jme3/math/Plane$Side;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jme3/math/Plane$Side;->$VALUES:[Lcom/jme3/math/Plane$Side;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/math/Plane$Side;
    .locals 1
    .parameter

    .prologue
    .line 55
    const-class v0, Lcom/jme3/math/Plane$Side;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Plane$Side;

    return-object v0
.end method

.method public static values()[Lcom/jme3/math/Plane$Side;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/jme3/math/Plane$Side;->$VALUES:[Lcom/jme3/math/Plane$Side;

    invoke-virtual {v0}, [Lcom/jme3/math/Plane$Side;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/Plane$Side;

    return-object v0
.end method
