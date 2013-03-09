.class public Lcom/htc/android/mail/eassvc/pim/EASOofResult;
.super Ljava/lang/Object;
.source "EASOofResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BODY_TYPE_TEXT:Ljava/lang/String; = "Text"

.field public static final BOTY_TYPE_HTML:Ljava/lang/String; = "HTML"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASOofResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public endTime:Ljava/lang/String;

.field public httpStatus:I

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

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASOofResult$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASOofResult$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->oofMsgList:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->oofMsgList:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->httpStatus:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->status:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->oofState:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->startTime:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->endTime:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->oofMsgList:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASOofResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASOofResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->httpStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->oofState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->oofMsgList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 47
    return-void
.end method
