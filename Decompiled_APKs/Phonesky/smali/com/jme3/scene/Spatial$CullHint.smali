.class public final enum Lcom/jme3/scene/Spatial$CullHint;
.super Ljava/lang/Enum;
.source "Spatial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/Spatial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CullHint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/scene/Spatial$CullHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/scene/Spatial$CullHint;

.field public static final enum Always:Lcom/jme3/scene/Spatial$CullHint;

.field public static final enum Dynamic:Lcom/jme3/scene/Spatial$CullHint;

.field public static final enum Inherit:Lcom/jme3/scene/Spatial$CullHint;

.field public static final enum Never:Lcom/jme3/scene/Spatial$CullHint;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/jme3/scene/Spatial$CullHint;

    const-string v1, "Inherit"

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Spatial$CullHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$CullHint;->Inherit:Lcom/jme3/scene/Spatial$CullHint;

    .line 85
    new-instance v0, Lcom/jme3/scene/Spatial$CullHint;

    const-string v1, "Dynamic"

    invoke-direct {v0, v1, v3}, Lcom/jme3/scene/Spatial$CullHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    .line 90
    new-instance v0, Lcom/jme3/scene/Spatial$CullHint;

    const-string v1, "Always"

    invoke-direct {v0, v1, v4}, Lcom/jme3/scene/Spatial$CullHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    .line 95
    new-instance v0, Lcom/jme3/scene/Spatial$CullHint;

    const-string v1, "Never"

    invoke-direct {v0, v1, v5}, Lcom/jme3/scene/Spatial$CullHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jme3/scene/Spatial$CullHint;

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Inherit:Lcom/jme3/scene/Spatial$CullHint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jme3/scene/Spatial$CullHint;->$VALUES:[Lcom/jme3/scene/Spatial$CullHint;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/scene/Spatial$CullHint;
    .locals 1
    .parameter

    .prologue
    .line 74
    const-class v0, Lcom/jme3/scene/Spatial$CullHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial$CullHint;

    return-object v0
.end method

.method public static values()[Lcom/jme3/scene/Spatial$CullHint;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->$VALUES:[Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {v0}, [Lcom/jme3/scene/Spatial$CullHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial$CullHint;

    return-object v0
.end method
