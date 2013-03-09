.class public Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;
.super Ljava/lang/Object;
.source "FileFilterUtils.java"


# static fields
.field private static cvsFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

.field private static svnFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static ageFileFilter(J)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "cutoff"

    .prologue
    .line 179
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static ageFileFilter(JZ)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "cutoff"
    .parameter "acceptOlder"

    .prologue
    .line 191
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "cutoffReference"

    .prologue
    .line 228
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;Z)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "cutoffReference"
    .parameter "acceptOlder"

    .prologue
    .line 241
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "cutoffDate"

    .prologue
    .line 203
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;Z)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "cutoffDate"
    .parameter "acceptOlder"

    .prologue
    .line 215
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;Z)V

    return-object v0
.end method

.method public static andFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "filter1"
    .parameter "filter2"

    .prologue
    .line 103
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 155
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FilenameFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 166
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FilenameFilter;)V

    return-object v0
.end method

.method public static directoryFileFilter()Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static falseFileFilter()Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FalseFileFilter;->FALSE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static fileFileFilter()Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFileFilter;->FILE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static makeCVSAware(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 2
    .parameter "filter"

    .prologue
    .line 300
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    if-nez v0, :cond_0

    .line 301
    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->directoryFileFilter()Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    const-string v1, "CVS"

    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->andFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    .line 304
    :cond_0
    if-nez p0, :cond_1

    .line 305
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    .line 307
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->andFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeDirectoryOnly(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 2
    .parameter "filter"

    .prologue
    .line 341
    if-nez p0, :cond_0

    .line 342
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    .line 344
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    goto :goto_0
.end method

.method public static makeFileOnly(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 2
    .parameter "filter"

    .prologue
    .line 355
    if-nez p0, :cond_0

    .line 356
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFileFilter;->FILE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    .line 358
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFileFilter;->FILE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    goto :goto_0
.end method

.method public static makeSVNAware(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 2
    .parameter "filter"

    .prologue
    .line 321
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->directoryFileFilter()Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    const-string v1, ".svn"

    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->andFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    .line 325
    :cond_0
    if-nez p0, :cond_1

    .line 326
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    .line 328
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->andFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    goto :goto_0
.end method

.method public static nameFileFilter(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "name"

    .prologue
    .line 73
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 124
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NotFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NotFileFilter;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static orFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "filter1"
    .parameter "filter2"

    .prologue
    .line 114
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/OrFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/OrFileFilter;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static prefixFileFilter(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "prefix"

    .prologue
    .line 53
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static sizeFileFilter(J)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "threshold"

    .prologue
    .line 253
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static sizeFileFilter(JZ)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "threshold"
    .parameter "acceptLarger"

    .prologue
    .line 265
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static sizeRangeFileFilter(JJ)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 5
    .parameter "minSizeInclusive"
    .parameter "maxSizeInclusive"

    .prologue
    .line 278
    new-instance v1, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    .line 279
    .local v1, minimumFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    .line 280
    .local v0, maximumFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    new-instance v2, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;

    invoke-direct {v2, v1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v2
.end method

.method public static suffixFileFilter(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "suffix"

    .prologue
    .line 63
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static trueFileFilter()Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method
