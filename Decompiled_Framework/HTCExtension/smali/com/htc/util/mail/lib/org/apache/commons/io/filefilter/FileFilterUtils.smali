.class public Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;
.super Ljava/lang/Object;
.source "FileFilterUtils.java"


# static fields
.field private static cvsFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

.field private static svnFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ageFileFilter(J)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static ageFileFilter(JZ)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;Z)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;Z)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;Z)V

    return-object v0
.end method

.method public static andFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FilenameFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FilenameFilter;)V

    return-object v0
.end method

.method public static directoryFileFilter()Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static falseFileFilter()Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FalseFileFilter;->FALSE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static fileFileFilter()Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFileFilter;->FILE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static makeCVSAware(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 2

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    if-nez v0, :cond_0

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

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

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

    if-nez p0, :cond_0

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

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

    if-nez p0, :cond_0

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFileFilter;->FILE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

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

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    if-nez v0, :cond_0

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

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

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

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NotFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/NotFileFilter;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static orFileFilter(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/OrFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/OrFileFilter;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static prefixFileFilter(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static sizeFileFilter(J)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static sizeFileFilter(JZ)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static sizeRangeFileFilter(JJ)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 5

    new-instance v1, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    new-instance v2, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;

    invoke-direct {v2, v1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/AndFileFilter;-><init>(Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v2
.end method

.method public static suffixFileFilter(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static trueFileFilter()Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lcom/htc/util/mail/lib/org/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method
