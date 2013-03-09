.class public final enum Lcom/jme3/scene/VertexBuffer$Usage;
.super Ljava/lang/Enum;
.source "VertexBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/VertexBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Usage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/scene/VertexBuffer$Usage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/scene/VertexBuffer$Usage;

.field public static final enum CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

.field public static final enum Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

.field public static final enum Static:Lcom/jme3/scene/VertexBuffer$Usage;

.field public static final enum Stream:Lcom/jme3/scene/VertexBuffer$Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Usage;

    const-string v1, "Static"

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    .line 213
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Usage;

    const-string v1, "Dynamic"

    invoke-direct {v0, v1, v3}, Lcom/jme3/scene/VertexBuffer$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    .line 218
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Usage;

    const-string v1, "Stream"

    invoke-direct {v0, v1, v4}, Lcom/jme3/scene/VertexBuffer$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    .line 224
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Usage;

    const-string v1, "CpuOnly"

    invoke-direct {v0, v1, v5}, Lcom/jme3/scene/VertexBuffer$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    .line 203
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jme3/scene/VertexBuffer$Usage;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->CpuOnly:Lcom/jme3/scene/VertexBuffer$Usage;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Usage;->$VALUES:[Lcom/jme3/scene/VertexBuffer$Usage;

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
    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/scene/VertexBuffer$Usage;
    .locals 1
    .parameter

    .prologue
    .line 203
    const-class v0, Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer$Usage;

    return-object v0
.end method

.method public static values()[Lcom/jme3/scene/VertexBuffer$Usage;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Usage;->$VALUES:[Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v0}, [Lcom/jme3/scene/VertexBuffer$Usage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/VertexBuffer$Usage;

    return-object v0
.end method
