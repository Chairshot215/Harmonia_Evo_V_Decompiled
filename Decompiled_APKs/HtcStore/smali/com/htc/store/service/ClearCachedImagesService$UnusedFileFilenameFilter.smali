.class Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilter;
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
    name = "UnusedFileFilenameFilter"
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
    .line 177
    .local p2, fileNamesShouldBeRetained:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilter;->this$0:Lcom/htc/store/service/ClearCachedImagesService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilter;->mFileNamesShouldBeRetained:Ljava/util/ArrayList;

    .line 179
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/store/service/ClearCachedImagesService$UnusedFileFilenameFilter;->mFileNamesShouldBeRetained:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 187
    :cond_0
    return v0
.end method
