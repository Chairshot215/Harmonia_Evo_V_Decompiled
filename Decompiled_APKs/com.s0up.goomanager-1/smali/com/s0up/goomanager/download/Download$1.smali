.class Lcom/s0up/goomanager/download/Download$1;
.super Ljava/lang/Object;
.source "Download.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/download/Download;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/s0up/goomanager/download/Download;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/s0up/goomanager/download/Download;
    .locals 3
    .parameter "source"

    .prologue
    .line 91
    new-instance v0, Lcom/s0up/goomanager/download/Download;

    invoke-direct {v0}, Lcom/s0up/goomanager/download/Download;-><init>()V

    .line 92
    .local v0, d:Lcom/s0up/goomanager/download/Download;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/s0up/goomanager/download/Download;->url:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/s0up/goomanager/download/Download;->urlExtras:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/s0up/goomanager/download/Download;->md5Sum:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/s0up/goomanager/download/Download;->fileLength:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/s0up/goomanager/download/Download;->numberOfTimesTried:I

    .line 98
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/download/Download$1;->createFromParcel(Landroid/os/Parcel;)Lcom/s0up/goomanager/download/Download;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/s0up/goomanager/download/Download;
    .locals 1
    .parameter "size"

    .prologue
    .line 103
    new-array v0, p1, [Lcom/s0up/goomanager/download/Download;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/download/Download$1;->newArray(I)[Lcom/s0up/goomanager/download/Download;

    move-result-object v0

    return-object v0
.end method
