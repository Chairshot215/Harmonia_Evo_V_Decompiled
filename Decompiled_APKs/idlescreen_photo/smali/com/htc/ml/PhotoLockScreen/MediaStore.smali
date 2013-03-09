.class public Lcom/htc/ml/PhotoLockScreen/MediaStore;
.super Ljava/lang/Object;
.source "MediaStore.java"


# instance fields
.field private image:Z

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/MediaStore;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isImage()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/htc/ml/PhotoLockScreen/MediaStore;->image:Z

    return v0
.end method

.method public setImage(Z)V
    .locals 0
    .parameter "image"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/htc/ml/PhotoLockScreen/MediaStore;->image:Z

    .line 15
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 8
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/MediaStore;->path:Ljava/lang/String;

    .line 9
    return-void
.end method
