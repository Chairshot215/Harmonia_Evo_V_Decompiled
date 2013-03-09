.class public Lcom/htc/home/personalize/scene/ScenePickerItem;
.super Ljava/lang/Object;
.source "ScenePickerItem.java"


# instance fields
.field id:I

.field private marked:Z

.field name:Ljava/lang/String;

.field private preview:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private translateId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "name"
    .parameter "id"
    .parameter "preview"
    .parameter "translateId"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setName(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setId(I)V

    .line 17
    invoke-virtual {p0, p3}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setPreview(Landroid/graphics/Bitmap;)V

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setMarked(Z)V

    .line 19
    invoke-virtual {p0, p4}, Lcom/htc/home/personalize/scene/ScenePickerItem;->setTranslateId(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/home/personalize/scene/ScenePickerItem;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePickerItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePickerItem;->preview:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePickerItem;->preview:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getTranslateId()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/home/personalize/scene/ScenePickerItem;->translateId:I

    return v0
.end method

.method public isMarked()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/home/personalize/scene/ScenePickerItem;->marked:Z

    return v0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 31
    iput p1, p0, Lcom/htc/home/personalize/scene/ScenePickerItem;->id:I

    .line 32
    return-void
.end method

.method public setMarked(Z)V
    .locals 0
    .parameter "marked"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/htc/home/personalize/scene/ScenePickerItem;->marked:Z

    .line 48
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePickerItem;->name:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setPreview(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "preview"

    .prologue
    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/home/personalize/scene/ScenePickerItem;->preview:Ljava/lang/ref/WeakReference;

    .line 40
    return-void
.end method

.method public setTranslateId(I)V
    .locals 0
    .parameter "translateId"

    .prologue
    .line 55
    iput p1, p0, Lcom/htc/home/personalize/scene/ScenePickerItem;->translateId:I

    .line 56
    return-void
.end method
