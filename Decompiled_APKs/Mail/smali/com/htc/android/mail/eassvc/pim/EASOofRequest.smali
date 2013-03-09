.class public Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
.super Ljava/lang/Object;
.source "EASOofRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASOofRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final OOF_STATE_DISABLE:I = 0x0

.field public static final OOF_STATE_GLOBAL:I = 0x1

.field public static final OOF_STATE_TIME_BASE:I = 0x2


# instance fields
.field public endTime:Ljava/lang/String;

.field public oofMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASOofMessage;",
            ">;"
        }
    .end annotation
.end field

.field public oofState:I

.field public startTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASOofRequest$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASOofRequest$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->oofMsgList:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->oofMsgList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->oofState:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->startTime:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->endTime:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->oofMsgList:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASOofRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->oofState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->oofMsgList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 44
    return-void
.end method
