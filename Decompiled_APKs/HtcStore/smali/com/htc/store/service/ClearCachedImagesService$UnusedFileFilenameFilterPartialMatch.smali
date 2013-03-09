.class Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilterPartialMatch;
.super Ljava/lang/Object;
.source "ClearCachedImagesService.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/service/ClearCachedImagesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnusedFileFilenameFilterPartialMatch"
.end annotation


# instance fields
.field private mFileNamesShouldBeRetained:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/store/service/ClearCachedImagesService;


# direct methods
.method public constructor <init>(Lcom/htc/store/service/ClearCachedImagesService;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, fileNamesShouldBeRetained:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilterPartialMatch;->this$0:Lcom/htc/store/service/ClearCachedImagesService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p2, p0, Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilterPartialMatch;->mFileNamesShouldBeRetained:Ljava/util/ArrayList;

    .line 197
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 201
    const/4 v1, 0x1

    .line 202
    .local v1, result:Z
    iget-object v3, p0, Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilterPartialMatch;->mFileNamesShouldBeRetained:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
    .local v2, retainedName:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    const/4 v1, 0x0

    .line 208
    .end local v2           #retainedName:Ljava/lang/String;
    :cond_1
    return v1
.end method
