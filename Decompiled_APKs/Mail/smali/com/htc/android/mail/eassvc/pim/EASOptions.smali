.class public Lcom/htc/android/mail/eassvc/pim/EASOptions;
.super Ljava/lang/Object;
.source "EASOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_UNKNOWN:D = -1.0


# instance fields
.field public calBodyFormat:I

.field public calFilterType:I

.field public conflictResolving:I

.field public mailAttachmentOpt:I

.field public mailBodyType:I

.field public mailFilterType:I

.field public mailTruncationSize:I

.field public peakDays:I

.field public peakTimeEnd:I

.field public peakTimeStart:I

.field public syncSchedule:I

.field public syncScheduleOffPeak:I

.field public syncSchedulePeak:I

.field public syncWhileRoaming:Z

.field public taskFilterType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASOptions$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASOptions$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 5
    .parameter "protocol"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    .line 32
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    .line 33
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    .line 34
    const/16 v0, 0x1f

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakDays:I

    .line 35
    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncWhileRoaming:Z

    .line 36
    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->conflictResolving:I

    .line 37
    iput v4, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailFilterType:I

    .line 38
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    .line 39
    iput v3, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailAttachmentOpt:I

    .line 40
    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calFilterType:I

    .line 41
    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calBodyFormat:I

    .line 42
    iput v3, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->taskFilterType:I

    .line 43
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    .line 44
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    .line 46
    const-wide/high16 v0, -0x4010

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4004

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 47
    iput v2, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    iput v4, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakDays:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncWhileRoaming:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->conflictResolving:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailFilterType:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailAttachmentOpt:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calFilterType:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calBodyFormat:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->taskFilterType:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    .line 103
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASOptions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    .line 54
    iget v1, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedule:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v1, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncSchedulePeak:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v1, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncScheduleOffPeak:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v1, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakDays:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->syncWhileRoaming:Z

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->conflictResolving:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailFilterType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailAttachmentOpt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calFilterType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->calBodyFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->taskFilterType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->peakTimeEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
