.class public Lcom/s0up/goomanager/download/Download;
.super Ljava/lang/Object;
.source "Download.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/s0up/goomanager/download/Download;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public continueDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field downloadedAmount:Ljava/util/concurrent/atomic/AtomicLong;

.field public fileLength:J

.field public isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public md5Sum:Ljava/lang/String;

.field numberOfTimesTried:I

.field public outputFile:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public urlExtras:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/s0up/goomanager/download/Download$1;

    invoke-direct {v0}, Lcom/s0up/goomanager/download/Download$1;-><init>()V

    sput-object v0, Lcom/s0up/goomanager/download/Download;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/s0up/goomanager/download/Download;->fileLength:J

    .line 57
    iput v2, p0, Lcom/s0up/goomanager/download/Download;->numberOfTimesTried:I

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/s0up/goomanager/download/Download;->continueDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/s0up/goomanager/download/Download;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/s0up/goomanager/download/Download;->downloadedAmount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 110
    instance-of v2, p1, Lcom/s0up/goomanager/download/Download;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 111
    check-cast v0, Lcom/s0up/goomanager/download/Download;

    .line 113
    .local v0, d:Lcom/s0up/goomanager/download/Download;
    iget-object v2, p0, Lcom/s0up/goomanager/download/Download;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/s0up/goomanager/download/Download;->url:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/s0up/goomanager/download/Download;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/s0up/goomanager/download/Download;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/s0up/goomanager/download/Download;->urlExtras:Ljava/lang/String;

    iget-object v3, v0, Lcom/s0up/goomanager/download/Download;->urlExtras:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/s0up/goomanager/download/Download;->urlExtras:Ljava/lang/String;

    iget-object v3, v0, Lcom/s0up/goomanager/download/Download;->urlExtras:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    iget-object v3, v0, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    iget-object v3, v0, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/s0up/goomanager/download/Download;->md5Sum:Ljava/lang/String;

    iget-object v3, v0, Lcom/s0up/goomanager/download/Download;->md5Sum:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/s0up/goomanager/download/Download;->md5Sum:Ljava/lang/String;

    iget-object v3, v0, Lcom/s0up/goomanager/download/Download;->md5Sum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    :cond_3
    iget-wide v2, p0, Lcom/s0up/goomanager/download/Download;->fileLength:J

    iget-wide v4, v0, Lcom/s0up/goomanager/download/Download;->fileLength:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 119
    .end local v0           #d:Lcom/s0up/goomanager/download/Download;
    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 125
    const/16 v0, 0x11

    .line 126
    .local v0, result:I
    iget-object v1, p0, Lcom/s0up/goomanager/download/Download;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 127
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/s0up/goomanager/download/Download;->urlExtras:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 128
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 129
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/s0up/goomanager/download/Download;->md5Sum:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 131
    return v0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/s0up/goomanager/download/Download;->urlExtras:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/s0up/goomanager/download/Download;->md5Sum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/s0up/goomanager/download/Download;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/s0up/goomanager/download/Download;->urlExtras:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/s0up/goomanager/download/Download;->md5Sum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-wide v0, p0, Lcom/s0up/goomanager/download/Download;->fileLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget v0, p0, Lcom/s0up/goomanager/download/Download;->numberOfTimesTried:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void
.end method
