.class public Lcom/google/android/play/analytics/RollingFileStream;
.super Ljava/lang/Object;
.source "RollingFileStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/analytics/RollingFileStream$FlushableFileOutputStream;,
        Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;,
        Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;
    }
.end annotation


# instance fields
.field private final mAvailableFilesToRead:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableFilesToWrite:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileNamePrefix:Ljava/lang/String;

.field private mInputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;

.field private final mLogFileDirectory:Ljava/io/File;

.field private final mMaxFileSize:J

.field private final mNumberOfFiles:I

.field private mOutputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;

.field private final mRecommendedFileSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;IJJ)V
    .locals 3
    .parameter "logFileDirectory"
    .parameter "fileNamePrefix"
    .parameter "numOfFiles"
    .parameter "recommendedFileSize"
    .parameter "maxFileSize"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mOutputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;

    .line 48
    iput-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mInputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;

    .line 54
    if-lez p3, :cond_0

    cmp-long v0, p4, v1

    if-lez v0, :cond_0

    cmp-long v0, p6, v1

    if-gtz v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value <= zero: numOfFiles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recommendedFileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxFileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iput-object p1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mLogFileDirectory:Ljava/io/File;

    .line 60
    iput-object p2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mFileNamePrefix:Ljava/lang/String;

    .line 61
    iput p3, p0, Lcom/google/android/play/analytics/RollingFileStream;->mNumberOfFiles:I

    .line 62
    iput-wide p4, p0, Lcom/google/android/play/analytics/RollingFileStream;->mRecommendedFileSize:J

    .line 63
    iput-wide p6, p0, Lcom/google/android/play/analytics/RollingFileStream;->mMaxFileSize:J

    .line 65
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToRead:Ljava/util/LinkedList;

    .line 66
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToWrite:Ljava/util/LinkedList;

    .line 68
    invoke-direct {p0}, Lcom/google/android/play/analytics/RollingFileStream;->loadFiles()V

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/play/analytics/RollingFileStream;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mMaxFileSize:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/play/analytics/RollingFileStream;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToRead:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/play/analytics/RollingFileStream;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToWrite:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/play/analytics/RollingFileStream;Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;)Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mOutputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/play/analytics/RollingFileStream;)Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mInputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/play/analytics/RollingFileStream;Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;)Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mInputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;

    return-object p1
.end method

.method private loadFiles()V
    .locals 6

    .prologue
    .line 72
    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mLogFileDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mLogFileDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 75
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mNumberOfFiles:I

    if-ge v1, v2, :cond_2

    .line 76
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mLogFileDirectory:Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/RollingFileStream;->getFileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/play/analytics/RollingFileStream;->mMaxFileSize:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToRead:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToWrite:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    .end local v0           #file:Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToRead:Ljava/util/LinkedList;

    sget-object v3, Lcom/google/android/play/utils/FileModifiedDateComparator;->INSTANCE:Lcom/google/android/play/utils/FileModifiedDateComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    return-void
.end method


# virtual methods
.method public closeInputStream(Ljava/io/InputStream;Z)V
    .locals 3
    .parameter "is"
    .parameter "delete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    instance-of v1, p1, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;

    if-nez v1, :cond_0

    .line 156
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide exact stream as given by getInputStream"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 159
    check-cast v0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;

    .line 160
    .local v0, localInputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;
    invoke-virtual {v0, p2}, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;->close(Z)V

    .line 161
    return-void
.end method

.method protected getFileName(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mNumberOfFiles:I

    if-le p1, v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "given index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " greater than the number of files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mNumberOfFiles:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mFileNamePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mInputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;

    if-eqz v1, :cond_0

    .line 134
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Input stream already provided.  Close that stream before getting a new one."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToRead:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 140
    .local v0, hasFilesToSend:Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mOutputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mOutputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;

    iget-wide v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mRecommendedFileSize:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->rotateFileIfLargerThan(J)V

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToRead:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    new-instance v2, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;

    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToRead:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;-><init>(Lcom/google/android/play/analytics/RollingFileStream;Ljava/io/File;)V

    iput-object v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mInputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/google/android/play/analytics/RollingFileStream;->mInputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileInputStream;

    return-object v1

    .line 138
    .end local v0           #hasFilesToSend:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mOutputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;

    invoke-direct {v0, p0}, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;-><init>(Lcom/google/android/play/analytics/RollingFileStream;)V

    iput-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mOutputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mOutputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;

    return-object v0
.end method

.method public hasFileReadyToSend()Z
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mAvailableFilesToRead:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mOutputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/play/analytics/RollingFileStream;->mOutputStream:Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;

    #getter for: Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->mFileSize:J
    invoke-static {v0}, Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;->access$000(Lcom/google/android/play/analytics/RollingFileStream$MultiFileOutputStream;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/play/analytics/RollingFileStream;->mRecommendedFileSize:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
