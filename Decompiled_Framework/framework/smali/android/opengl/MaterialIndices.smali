.class Landroid/opengl/MaterialIndices;
.super Ljava/lang/Object;
.source "Group.java"


# instance fields
.field private indexBuffer:Ljava/nio/ShortBuffer;

.field private material:Landroid/opengl/Material;


# direct methods
.method public constructor <init>(Landroid/opengl/Material;Ljava/nio/ShortBuffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/opengl/MaterialIndices;->material:Landroid/opengl/Material;

    iput-object v0, p0, Landroid/opengl/MaterialIndices;->indexBuffer:Ljava/nio/ShortBuffer;

    iput-object p1, p0, Landroid/opengl/MaterialIndices;->material:Landroid/opengl/Material;

    iput-object p2, p0, Landroid/opengl/MaterialIndices;->indexBuffer:Ljava/nio/ShortBuffer;

    return-void
.end method


# virtual methods
.method public getIndexBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    iget-object v0, p0, Landroid/opengl/MaterialIndices;->indexBuffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public getMaterial()Landroid/opengl/Material;
    .locals 1

    iget-object v0, p0, Landroid/opengl/MaterialIndices;->material:Landroid/opengl/Material;

    return-object v0
.end method
