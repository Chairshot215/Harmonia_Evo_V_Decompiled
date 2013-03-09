.class public Lcom/google/android/talk/videochat/FloatRect;
.super Ljava/lang/Object;
.source "FloatRect.java"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    iput v0, p0, Lcom/google/android/talk/videochat/FloatRect;->right:F

    iput v0, p0, Lcom/google/android/talk/videochat/FloatRect;->top:F

    iput v0, p0, Lcom/google/android/talk/videochat/FloatRect;->left:F

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 41
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/videochat/FloatRect;

    .line 42
    .local v0, r:Lcom/google/android/talk/videochat/FloatRect;
    if-eqz v0, :cond_0

    .line 43
    iget v2, p0, Lcom/google/android/talk/videochat/FloatRect;->left:F

    iget v3, v0, Lcom/google/android/talk/videochat/FloatRect;->left:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/talk/videochat/FloatRect;->top:F

    iget v3, v0, Lcom/google/android/talk/videochat/FloatRect;->top:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/talk/videochat/FloatRect;->right:F

    iget v3, v0, Lcom/google/android/talk/videochat/FloatRect;->right:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    iget v3, v0, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 46
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "FloatRect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/talk/videochat/FloatRect;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget v1, p0, Lcom/google/android/talk/videochat/FloatRect;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/talk/videochat/FloatRect;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/talk/videochat/FloatRect;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
