.class final Lcom/htc/sdcardwizard/handler/FileCategoryInfoGetter;
.super Ljava/lang/Object;
.source "FileCategoryInfoGetter.java"

# interfaces
.implements Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;


# instance fields
.field private final filter:Ljava/io/FileFilter;

.field private final paths:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/io/FileFilter;)V
    .locals 0
    .parameter "paths"
    .parameter "filter"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/htc/sdcardwizard/handler/FileCategoryInfoGetter;->paths:[Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/htc/sdcardwizard/handler/FileCategoryInfoGetter;->filter:Ljava/io/FileFilter;

    .line 13
    return-void
.end method


# virtual methods
.method public get()Lcom/htc/sdcardwizard/handler/CategoryInfo;
    .locals 10

    .prologue
    .line 17
    const/4 v1, 0x0

    .line 18
    .local v1, count:I
    const-wide/16 v6, 0x0

    .line 20
    .local v6, size:J
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/FileCategoryInfoGetter;->paths:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 21
    .local v5, path:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/sdcardwizard/handler/FileCategoryInfoGetter;->filter:Ljava/io/FileFilter;

    invoke-static {v5, v8}, Lcom/htc/sdcardwizard/utils/FileHelper;->getFileList(Ljava/lang/String;Ljava/io/FileFilter;)Lcom/htc/sdcardwizard/utils/FileList;

    move-result-object v2

    .line 22
    .local v2, files:Lcom/htc/sdcardwizard/utils/FileList;
    invoke-virtual {v2}, Lcom/htc/sdcardwizard/utils/FileList;->size()I

    move-result v8

    add-int/2addr v1, v8

    .line 23
    invoke-virtual {v2}, Lcom/htc/sdcardwizard/utils/FileList;->getTotalSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 20
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    .end local v2           #files:Lcom/htc/sdcardwizard/utils/FileList;
    .end local v5           #path:Ljava/lang/String;
    :cond_0
    new-instance v8, Lcom/htc/sdcardwizard/handler/CategoryInfo;

    invoke-direct {v8, v1, v6, v7}, Lcom/htc/sdcardwizard/handler/CategoryInfo;-><init>(IJ)V

    return-object v8
.end method
