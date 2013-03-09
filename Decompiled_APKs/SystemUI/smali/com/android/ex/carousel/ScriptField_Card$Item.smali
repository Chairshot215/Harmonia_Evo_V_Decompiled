.class public Lcom/android/ex/carousel/ScriptField_Card$Item;
.super Ljava/lang/Object;
.source "ScriptField_Card.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/carousel/ScriptField_Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final sizeof:I = 0xa0


# instance fields
.field cardVisible:I

.field detailLineOffset:Landroid/renderscript/Float2;

.field detailTexture:Landroid/renderscript/Allocation;

.field detailTextureOffset:Landroid/renderscript/Float2;

.field detailTexturePosition:[Landroid/renderscript/Float2;

.field detailTextureState:I

.field detailTextureTimeStamp:J

.field detailVisible:I

.field geometry:Landroid/renderscript/Mesh;

.field geometryState:I

.field geometryTimeStamp:J

.field matrix:Landroid/renderscript/Matrix4f;

.field shouldPrefetch:I

.field texture:Landroid/renderscript/Allocation;

.field textureState:I

.field textureTimeStamp:J


# direct methods
.method constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/renderscript/Float2;

    invoke-direct {v1}, Landroid/renderscript/Float2;-><init>()V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureOffset:Landroid/renderscript/Float2;

    new-instance v1, Landroid/renderscript/Float2;

    invoke-direct {v1}, Landroid/renderscript/Float2;-><init>()V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailLineOffset:Landroid/renderscript/Float2;

    new-array v1, v3, [Landroid/renderscript/Float2;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexturePosition:[Landroid/renderscript/Float2;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexturePosition:[Landroid/renderscript/Float2;

    new-instance v2, Landroid/renderscript/Float2;

    invoke-direct {v2}, Landroid/renderscript/Float2;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/renderscript/Matrix4f;

    invoke-direct {v1}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card$Item;->matrix:Landroid/renderscript/Matrix4f;

    return-void
.end method
