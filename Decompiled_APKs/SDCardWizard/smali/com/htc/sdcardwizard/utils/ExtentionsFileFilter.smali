.class public Lcom/htc/sdcardwizard/utils/ExtentionsFileFilter;
.super Ljava/lang/Object;
.source "ExtentionsFileFilter.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field protected final extentions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 6
    .parameter "extentions"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/htc/sdcardwizard/utils/ExtentionsFileFilter;->extentions:Ljava/util/ArrayList;

    .line 11
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 12
    .local v1, ext:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/sdcardwizard/utils/ExtentionsFileFilter;->extentions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    .end local v1           #ext:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 5
    .parameter "pathname"

    .prologue
    const/4 v3, 0x1

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    :goto_0
    return v3

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/sdcardwizard/utils/ExtentionsFileFilter;->extentions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    .local v0, ext:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 27
    .end local v0           #ext:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
