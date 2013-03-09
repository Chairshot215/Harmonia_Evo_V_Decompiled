.class public Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
.super Ljava/lang/Object;
.source "EASLastSyncInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public lastSyncErrorCode:I

.field public lastSyncResult:I

.field public lastSyncTime:J

.field public syncSrcType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->syncSrcType:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->syncSrcType:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    .line 25
    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    .line 26
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->syncSrcType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    return-void
.end method
