.class public Lcom/htc/android/mail/eassvc/pim/EASOofMessage;
.super Ljava/lang/Object;
.source "EASOofMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final APPLY_TYPE_EXTERNAL_KNOWN:I = 0x2

.field public static final APPLY_TYPE_EXTERNAL_UNKNOWN:I = 0x3

.field public static final APPLY_TYPE_INTERNAL:I = 0x1

.field public static final BODY_TYPE_TEXT:Ljava/lang/String; = "Text"

.field public static final BOTY_TYPE_HTML:Ljava/lang/String; = "HTML"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASOofMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appliesTo:I

.field public bodyType:Ljava/lang/String;

.field public enabled:I

.field public replyMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASOofMessage$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASOofMessage$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->appliesTo:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->enabled:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->replyMessage:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->bodyType:Ljava/lang/String;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASOofMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;-><init>(Landroid/os/Parcel;)V

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
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->appliesTo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->replyMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->bodyType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return-void
.end method
