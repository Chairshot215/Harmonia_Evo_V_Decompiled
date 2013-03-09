.class final Lcom/google/android/gm/provider/ZipUtils$1;
.super Ljava/util/zip/Inflater;
.source "ZipUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/ZipUtils;->inflateToStream([B[B)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dict:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/gm/provider/ZipUtils$1;->val$dict:[B

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public needsDictionary()Z
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/gm/provider/ZipUtils$1;->val$dict:[B

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/ZipUtils$1;->setDictionary([B)V

    .line 105
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
