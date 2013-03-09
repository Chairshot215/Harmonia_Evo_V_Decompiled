.class public final enum Lcom/jme3/scene/VertexBuffer$Format;
.super Ljava/lang/Enum;
.source "VertexBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/VertexBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/scene/VertexBuffer$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/scene/VertexBuffer$Format;

.field public static final enum Byte:Lcom/jme3/scene/VertexBuffer$Format;

.field public static final enum Double:Lcom/jme3/scene/VertexBuffer$Format;

.field public static final enum Float:Lcom/jme3/scene/VertexBuffer$Format;

.field public static final enum Half:Lcom/jme3/scene/VertexBuffer$Format;

.field public static final enum Int:Lcom/jme3/scene/VertexBuffer$Format;

.field public static final enum Short:Lcom/jme3/scene/VertexBuffer$Format;

.field public static final enum UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

.field public static final enum UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

.field public static final enum UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;


# instance fields
.field private componentSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 240
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Format;

    const-string v1, "Half"

    invoke-direct {v0, v1, v7, v3}, Lcom/jme3/scene/VertexBuffer$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    .line 246
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Format;

    const-string v1, "Float"

    invoke-direct {v0, v1, v5, v4}, Lcom/jme3/scene/VertexBuffer$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    .line 253
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Format;

    const-string v1, "Double"

    invoke-direct {v0, v1, v3, v6}, Lcom/jme3/scene/VertexBuffer$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Format;->Double:Lcom/jme3/scene/VertexBuffer$Format;

    .line 258
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Format;

    const-string v1, "Byte"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v5}, Lcom/jme3/scene/VertexBuffer$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Format;->Byte:Lcom/jme3/scene/VertexBuffer$Format;

    .line 263
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Format;

    const-string v1, "UnsignedByte"

    invoke-direct {v0, v1, v4, v5}, Lcom/jme3/scene/VertexBuffer$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    .line 268
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Format;

    const-string v1, "Short"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/scene/VertexBuffer$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Format;->Short:Lcom/jme3/scene/VertexBuffer$Format;

    .line 273
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Format;

    const-string v1, "UnsignedShort"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/scene/VertexBuffer$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    .line 278
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Format;

    const-string v1, "Int"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/jme3/scene/VertexBuffer$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Format;->Int:Lcom/jme3/scene/VertexBuffer$Format;

    .line 283
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Format;

    const-string v1, "UnsignedInt"

    invoke-direct {v0, v1, v6, v4}, Lcom/jme3/scene/VertexBuffer$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    .line 235
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/jme3/scene/VertexBuffer$Format;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Half:Lcom/jme3/scene/VertexBuffer$Format;

    aput-object v1, v0, v7

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Double:Lcom/jme3/scene/VertexBuffer$Format;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->Byte:Lcom/jme3/scene/VertexBuffer$Format;

    aput-object v2, v0, v1

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->Short:Lcom/jme3/scene/VertexBuffer$Format;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Format;->Int:Lcom/jme3/scene/VertexBuffer$Format;

    aput-object v2, v0, v1

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    aput-object v1, v0, v6

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Format;->$VALUES:[Lcom/jme3/scene/VertexBuffer$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter "componentSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/VertexBuffer$Format;->componentSize:I

    .line 288
    iput p3, p0, Lcom/jme3/scene/VertexBuffer$Format;->componentSize:I

    .line 289
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/scene/VertexBuffer$Format;
    .locals 1
    .parameter

    .prologue
    .line 235
    const-class v0, Lcom/jme3/scene/VertexBuffer$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer$Format;

    return-object v0
.end method

.method public static values()[Lcom/jme3/scene/VertexBuffer$Format;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Format;->$VALUES:[Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v0}, [Lcom/jme3/scene/VertexBuffer$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/VertexBuffer$Format;

    return-object v0
.end method


# virtual methods
.method public getComponentSize()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/jme3/scene/VertexBuffer$Format;->componentSize:I

    return v0
.end method
