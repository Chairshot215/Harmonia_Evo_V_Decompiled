.class public final Lcom/htc/sdcardwizard/utils/FileList;
.super Ljava/util/ArrayList;
.source "FileList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0xa065e10ce40d39L


# instance fields
.field private totalSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/io/File;)Z
    .locals 5
    .parameter "object"

    .prologue
    .line 14
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 15
    .local v0, added:Z
    if-eqz v0, :cond_0

    .line 16
    iget-wide v1, p0, Lcom/htc/sdcardwizard/utils/FileList;->totalSize:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/sdcardwizard/utils/FileList;->totalSize:J

    .line 18
    :cond_0
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sdcardwizard/utils/FileList;->add(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, arg0:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/io/File;>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 24
    .local v0, added:Z
    if-eqz v0, :cond_0

    instance-of v2, p1, Lcom/htc/sdcardwizard/utils/FileList;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 25
    check-cast v1, Lcom/htc/sdcardwizard/utils/FileList;

    .line 26
    .local v1, files:Lcom/htc/sdcardwizard/utils/FileList;
    iget-wide v2, p0, Lcom/htc/sdcardwizard/utils/FileList;->totalSize:J

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/utils/FileList;->getTotalSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sdcardwizard/utils/FileList;->totalSize:J

    .line 28
    .end local v1           #files:Lcom/htc/sdcardwizard/utils/FileList;
    :cond_0
    return v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/htc/sdcardwizard/utils/FileList;->totalSize:J

    return-wide v0
.end method
