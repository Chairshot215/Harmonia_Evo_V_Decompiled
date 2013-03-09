.class Lcom/android/camera/HTCCameraAdvanceSetting$Item;
.super Ljava/lang/Object;
.source "HTCCameraAdvanceSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCameraAdvanceSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation


# instance fields
.field public canChanged:Z

.field public isGray:Z

.field public mName:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->canChanged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->isGray:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->canChanged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->isGray:Z

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->canChanged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->isGray:Z

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->canChanged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->isGray:Z

    iput-object p2, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->canChanged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->isGray:Z

    iput-object p2, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->canChanged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->isGray:Z

    iput-object p1, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    return-void
.end method

.method public setValue(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
