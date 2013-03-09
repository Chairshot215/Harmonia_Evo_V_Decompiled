.class public Lcom/android/ex/carousel/ScriptField_Card;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_Card.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/carousel/ScriptField_Card$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_Card;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mElement:Landroid/renderscript/Element;

    invoke-virtual {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_Card;->init(Landroid/renderscript/RenderScript;I)V

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_Card;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mElement:Landroid/renderscript/Element;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ex/carousel/ScriptField_Card;->init(Landroid/renderscript/RenderScript;II)V

    return-void
.end method

.method private copyToArray(Lcom/android/ex/carousel/ScriptField_Card$Item;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit16 v1, v1, 0xa0

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v1, p2, 0xa0

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/ScriptField_Card;->copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_Card$Item;Landroid/renderscript/FieldPacker;)V

    return-void
.end method

.method private copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_Card$Item;Landroid/renderscript/FieldPacker;)V
    .locals 3

    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureOffset:Landroid/renderscript/Float2;

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailLineOffset:Landroid/renderscript/Float2;

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexturePosition:[Landroid/renderscript/Float2;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometry:Landroid/renderscript/Mesh;

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    iget-object v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->matrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    iget v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureState:I

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    iget v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureState:I

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    iget v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryState:I

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    iget v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->cardVisible:I

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    iget v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailVisible:I

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    iget v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->shouldPrefetch:I

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/renderscript/FieldPacker;->skip(I)V

    iget-wide v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureTimeStamp:J

    invoke-virtual {p2, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    iget-wide v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureTimeStamp:J

    invoke-virtual {p2, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    iget-wide v1, p1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryTimeStamp:J

    invoke-virtual {p2, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 4

    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    invoke-static {p0}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "texture"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTexture"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTextureOffset"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailLineOffset"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTexturePosition"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "geometry"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "matrix"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "textureState"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTextureState"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "geometryState"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "cardVisible"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailVisible"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "shouldPrefetch"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#padding_1"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "textureTimeStamp"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTextureTimeStamp"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "geometryTimeStamp"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/ex/carousel/ScriptField_Card;->copyToArray(Lcom/android/ex/carousel/ScriptField_Card$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/android/ex/carousel/ScriptField_Card$Item;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_cardVisible(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->cardVisible:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailLineOffset(I)Landroid/renderscript/Float2;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailLineOffset:Landroid/renderscript/Float2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailTexture(I)Landroid/renderscript/Allocation;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailTextureOffset(I)Landroid/renderscript/Float2;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureOffset:Landroid/renderscript/Float2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailTexturePosition(I)[Landroid/renderscript/Float2;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexturePosition:[Landroid/renderscript/Float2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailTextureState(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailTextureTimeStamp(I)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureTimeStamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_detailVisible(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailVisible:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_geometry(I)Landroid/renderscript/Mesh;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometry:Landroid/renderscript/Mesh;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_geometryState(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_geometryTimeStamp(I)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryTimeStamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_matrix(I)Landroid/renderscript/Matrix4f;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->matrix:Landroid/renderscript/Matrix4f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_shouldPrefetch(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->shouldPrefetch:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_texture(I)Landroid/renderscript/Allocation;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_textureState(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_textureTimeStamp(I)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureTimeStamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    array-length v2, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-array v1, p1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_2
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit16 v4, v4, 0xa0

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/ex/carousel/ScriptField_Card$Item;IZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aput-object p1, v1, p2

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_Card;->copyToArray(Lcom/android/ex/carousel/ScriptField_Card$Item;I)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/ScriptField_Card;->copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_Card$Item;Landroid/renderscript/FieldPacker;)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_cardVisible(IIZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->cardVisible:I

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x78

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_detailLineOffset(ILandroid/renderscript/Float2;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailLineOffset:Landroid/renderscript/Float2;

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_detailTexture(ILandroid/renderscript/Allocation;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexture:Landroid/renderscript/Allocation;

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_detailTextureOffset(ILandroid/renderscript/Float2;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureOffset:Landroid/renderscript/Float2;

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_detailTexturePosition(I[Landroid/renderscript/Float2;Z)V
    .locals 5

    const/4 v4, 0x2

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v2, :cond_0

    new-instance v2, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    mul-int/lit16 v3, v3, 0xa0

    invoke-direct {v2, v3}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    new-array v2, v2, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v2, v2, p1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v3, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v3}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v3, v2, p1

    :cond_2
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v2, v2, p1

    iput-object p2, v2, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTexturePosition:[Landroid/renderscript/Float2;

    if-eqz p3, :cond_5

    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v3, p1, 0xa0

    add-int/lit8 v3, v3, 0x18

    invoke-virtual {v2, v3}, Landroid/renderscript/FieldPacker;->reset(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_3

    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/renderscript/FieldPacker;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3, v1}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized set_detailTextureState(IIZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureState:I

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x70

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x8

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_detailTextureTimeStamp(IJZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-wide p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailTextureTimeStamp:J

    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit16 v2, v2, 0x90

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xf

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_detailVisible(IIZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->detailVisible:I

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x7c

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_geometry(ILandroid/renderscript/Mesh;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometry:Landroid/renderscript/Mesh;

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_geometryState(IIZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryState:I

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x74

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x9

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_geometryTimeStamp(IJZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-wide p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->geometryTimeStamp:J

    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit16 v2, v2, 0x98

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_matrix(ILandroid/renderscript/Matrix4f;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->matrix:Landroid/renderscript/Matrix4f;

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x2c

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_shouldPrefetch(IIZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->shouldPrefetch:I

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xc

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_texture(ILandroid/renderscript/Allocation;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->texture:Landroid/renderscript/Allocation;

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_textureState(IIZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureState:I

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit8 v2, v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x7

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_textureTimeStamp(IJZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit16 v2, v2, 0xa0

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_Card;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_Card$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_Card$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_Card$Item;-><init>()V

    aput-object v2, v1, p1

    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mItemArray:[Lcom/android/ex/carousel/ScriptField_Card$Item;

    aget-object v1, v1, p1

    iput-wide p2, v1, Lcom/android/ex/carousel/ScriptField_Card$Item;->textureTimeStamp:J

    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v2, p1, 0xa0

    add-int/lit16 v2, v2, 0x88

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    invoke-virtual {v0, p2, p3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_Card;->mAllocation:Landroid/renderscript/Allocation;

    const/16 v2, 0xe

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
