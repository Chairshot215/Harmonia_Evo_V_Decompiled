.class public final enum Lcom/jme3/scene/Mesh$Mode;
.super Ljava/lang/Enum;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/scene/Mesh$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/scene/Mesh$Mode;

.field public static final enum Hybrid:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum LineLoop:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum LineStrip:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum Lines:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum Points:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum TriangleFan:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum Triangles:Lcom/jme3/scene/Mesh$Mode;


# instance fields
.field private listMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "Points"

    invoke-direct {v0, v1, v3, v4}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    .line 93
    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "Lines"

    invoke-direct {v0, v1, v4, v4}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    .line 101
    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "LineStrip"

    invoke-direct {v0, v1, v5, v3}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->LineStrip:Lcom/jme3/scene/Mesh$Mode;

    .line 109
    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "LineLoop"

    invoke-direct {v0, v1, v6, v3}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->LineLoop:Lcom/jme3/scene/Mesh$Mode;

    .line 115
    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "Triangles"

    invoke-direct {v0, v1, v7, v4}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    .line 122
    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "TriangleStrip"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    .line 129
    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "TriangleFan"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    .line 138
    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "Hybrid"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->Hybrid:Lcom/jme3/scene/Mesh$Mode;

    .line 81
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/jme3/scene/Mesh$Mode;

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->LineStrip:Lcom/jme3/scene/Mesh$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->LineLoop:Lcom/jme3/scene/Mesh$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/scene/Mesh$Mode;->Hybrid:Lcom/jme3/scene/Mesh$Mode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->$VALUES:[Lcom/jme3/scene/Mesh$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter "listMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/scene/Mesh$Mode;->listMode:Z

    .line 143
    iput-boolean p3, p0, Lcom/jme3/scene/Mesh$Mode;->listMode:Z

    .line 144
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/scene/Mesh$Mode;
    .locals 1
    .parameter

    .prologue
    .line 81
    const-class v0, Lcom/jme3/scene/Mesh$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Mesh$Mode;

    return-object v0
.end method

.method public static values()[Lcom/jme3/scene/Mesh$Mode;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->$VALUES:[Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0}, [Lcom/jme3/scene/Mesh$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Mesh$Mode;

    return-object v0
.end method
