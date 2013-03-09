.class public Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DOptions;
.super Ljava/lang/Object;
.source "Autorama3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama3d/Autorama3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Autorama3DOptions"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama3d/Autorama3D;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/autorama3d/Autorama3D;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DOptions;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumberOfImages()I
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DOptions;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mNumberOfImages:I
    invoke-static {v0}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$3(Lcom/scalado/camera/autorama3d/Autorama3D;)I

    move-result v0

    return v0
.end method

.method public getOutputFormat()Lcom/scalado/camera/autorama3d/OutputFormat;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DOptions;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #getter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mOutputFormat:Lcom/scalado/camera/autorama3d/OutputFormat;
    invoke-static {v0}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$1(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/autorama3d/OutputFormat;

    move-result-object v0

    return-object v0
.end method

.method public setNumberOfImages(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numberOfImages must be positive or 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DOptions;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mNumberOfImages:I
    invoke-static {v0, p1}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$2(Lcom/scalado/camera/autorama3d/Autorama3D;I)V

    return-void
.end method

.method public setOutputFormat(Lcom/scalado/camera/autorama3d/OutputFormat;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DOptions;->this$0:Lcom/scalado/camera/autorama3d/Autorama3D;

    #setter for: Lcom/scalado/camera/autorama3d/Autorama3D;->mOutputFormat:Lcom/scalado/camera/autorama3d/OutputFormat;
    invoke-static {v0, p1}, Lcom/scalado/camera/autorama3d/Autorama3D;->access$0(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/autorama3d/OutputFormat;)V

    return-void
.end method
