.class public final enum Lcom/jme3/light/Light$Type;
.super Ljava/lang/Enum;
.source "Light.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/light/Light;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/light/Light$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/light/Light$Type;

.field public static final enum Ambient:Lcom/jme3/light/Light$Type;

.field public static final enum Directional:Lcom/jme3/light/Light$Type;

.field public static final enum Point:Lcom/jme3/light/Light$Type;

.field public static final enum Spot:Lcom/jme3/light/Light$Type;


# instance fields
.field private typeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/jme3/light/Light$Type;

    const-string v1, "Directional"

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/light/Light$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/light/Light$Type;->Directional:Lcom/jme3/light/Light$Type;

    .line 64
    new-instance v0, Lcom/jme3/light/Light$Type;

    const-string v1, "Point"

    invoke-direct {v0, v1, v3, v3}, Lcom/jme3/light/Light$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/light/Light$Type;->Point:Lcom/jme3/light/Light$Type;

    .line 71
    new-instance v0, Lcom/jme3/light/Light$Type;

    const-string v1, "Spot"

    invoke-direct {v0, v1, v4, v4}, Lcom/jme3/light/Light$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/light/Light$Type;->Spot:Lcom/jme3/light/Light$Type;

    .line 78
    new-instance v0, Lcom/jme3/light/Light$Type;

    const-string v1, "Ambient"

    invoke-direct {v0, v1, v5, v5}, Lcom/jme3/light/Light$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/light/Light$Type;->Ambient:Lcom/jme3/light/Light$Type;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jme3/light/Light$Type;

    sget-object v1, Lcom/jme3/light/Light$Type;->Directional:Lcom/jme3/light/Light$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/light/Light$Type;->Point:Lcom/jme3/light/Light$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/light/Light$Type;->Spot:Lcom/jme3/light/Light$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/light/Light$Type;->Ambient:Lcom/jme3/light/Light$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jme3/light/Light$Type;->$VALUES:[Lcom/jme3/light/Light$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput p3, p0, Lcom/jme3/light/Light$Type;->typeId:I

    .line 84
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/light/Light$Type;
    .locals 1
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/jme3/light/Light$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/Light$Type;

    return-object v0
.end method

.method public static values()[Lcom/jme3/light/Light$Type;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/jme3/light/Light$Type;->$VALUES:[Lcom/jme3/light/Light$Type;

    invoke-virtual {v0}, [Lcom/jme3/light/Light$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/light/Light$Type;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/jme3/light/Light$Type;->typeId:I

    return v0
.end method
