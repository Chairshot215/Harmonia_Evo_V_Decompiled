.class public abstract Lcom/htc/painting/tool/pen/Pen;
.super Ljava/lang/Object;
.source "Pen.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Lcom/htc/painting/tool/pen/ReadOnlyPenProps;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/painting/tool/pen/Pen;->mId:I

    iput-object v1, p0, Lcom/htc/painting/tool/pen/Pen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    iput-object v1, p0, Lcom/htc/painting/tool/pen/Pen;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/htc/painting/tool/pen/Pen;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/painting/tool/pen/Pen;->mId:I

    iput-object p3, p0, Lcom/htc/painting/tool/pen/Pen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    return-void
.end method


# virtual methods
.method public final getAppPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/painting/tool/pen/Pen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_app_packagename"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/htc/painting/tool/pen/Pen;->mId:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/painting/tool/pen/Pen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    const-string v1, "_pen_name"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPenProps()Lcom/htc/painting/tool/pen/ReadOnlyPenProps;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/tool/pen/Pen;->mPenProps:Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    return-object v0
.end method

.method public abstract getRenderEngine()Lcom/htc/painting/engine/render/IRenderEngine;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/htc/painting/tool/pen/Pen;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/painting/tool/pen/Pen;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/painting/tool/pen/Pen;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/painting/tool/pen/Pen;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
