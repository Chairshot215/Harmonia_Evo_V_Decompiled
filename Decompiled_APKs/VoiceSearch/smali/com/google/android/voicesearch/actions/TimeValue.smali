.class public Lcom/google/android/voicesearch/actions/TimeValue;
.super Lcom/google/android/voicesearch/actions/SlotValue;
.source "TimeValue.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/TimeValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHourOfDay:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/voicesearch/actions/TimeValue$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/TimeValue$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/TimeValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mHourOfDay:I

    .line 35
    iput p2, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mMinute:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mHourOfDay:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mMinute:I

    .line 53
    return-void
.end method


# virtual methods
.method public asString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 75
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 76
    .local v1, dateFormat:Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 77
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v2, 0xb

    iget v3, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mHourOfDay:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 78
    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mMinute:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 80
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getHourOfDay()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mHourOfDay:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mMinute:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mHourOfDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/google/android/voicesearch/actions/TimeValue;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
