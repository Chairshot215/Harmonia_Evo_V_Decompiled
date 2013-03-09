.class public Landroid/renderscript/ProgramVertex$Builder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramVertex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Max input count exceeded."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/renderscript/Element;->isComplex()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Complex elements not allowed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    iget v1, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public create()Landroid/renderscript/ProgramVertex;
    .locals 8

    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6}, Landroid/renderscript/RenderScript;->validate()V

    iget v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    iget v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    new-array v5, v6, [I

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputCount:I

    if-ge v0, v6, :cond_0

    add-int/lit8 v3, v2, 0x1

    sget-object v6, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v5, v2

    add-int/lit8 v2, v3, 0x1

    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mInputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/renderscript/Element;->getID()I

    move-result v6

    aput v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputCount:I

    if-ge v0, v6, :cond_1

    add-int/lit8 v3, v2, 0x1

    sget-object v6, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v5, v2

    add-int/lit8 v2, v3, 0x1

    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mOutputs:[Landroid/renderscript/Element;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/renderscript/Element;->getID()I

    move-result v6

    aput v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstantCount:I

    if-ge v0, v6, :cond_2

    add-int/lit8 v3, v2, 0x1

    sget-object v6, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v5, v2

    add-int/lit8 v2, v3, 0x1

    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mConstants:[Landroid/renderscript/Type;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/renderscript/Type;->getID()I

    move-result v6

    aput v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureCount:I

    if-ge v0, v6, :cond_3

    add-int/lit8 v3, v2, 0x1

    sget-object v6, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v6, v6, Landroid/renderscript/Program$ProgramParam;->mID:I

    aput v6, v5, v2

    add-int/lit8 v2, v3, 0x1

    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v6, v6, v0

    iget v6, v6, Landroid/renderscript/Program$TextureType;->mID:I

    aput v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mShader:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/renderscript/RenderScript;->nProgramVertexCreate(Ljava/lang/String;[I)I

    move-result v1

    new-instance v4, Landroid/renderscript/ProgramVertex;

    iget-object v6, p0, Landroid/renderscript/Program$BaseProgramBuilder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v4, v1, v6}, Landroid/renderscript/ProgramVertex;-><init>(ILandroid/renderscript/RenderScript;)V

    invoke-virtual {p0, v4}, Landroid/renderscript/ProgramVertex$Builder;->initProgram(Landroid/renderscript/Program;)V

    return-object v4
.end method
