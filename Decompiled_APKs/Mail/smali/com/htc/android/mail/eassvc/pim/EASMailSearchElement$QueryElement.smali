.class public Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;
.super Ljava/lang/Object;
.source "EASMailSearchElement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryElement"
.end annotation


# static fields
.field public static final AND:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;",
            ">;"
        }
    .end annotation
.end field

.field public static final GreaterThan:I = 0x1

.field public static final LessThan:I = 0x2

.field public static final OR:I = 0x2


# instance fields
.field public Class:Ljava/lang/String;

.field public FreeText:Ljava/lang/String;

.field public collectionId:Ljava/lang/String;

.field public dateGreaterThan:Ljava/lang/String;

.field public dateLessThan:Ljava/lang/String;

.field public queryCondition:I

.field public timeFilter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "Email"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->Class:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->timeFilter:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->queryCondition:I

    .line 27
    const-string v0, "Email"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->Class:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->FreeText:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->collectionId:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->dateGreaterThan:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->dateLessThan:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "Email"

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->Class:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->timeFilter:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->queryCondition:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->Class:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->FreeText:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->collectionId:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->dateGreaterThan:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->dateLessThan:Ljava/lang/String;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->timeFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->queryCondition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->Class:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->FreeText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->collectionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->dateGreaterThan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailSearchElement$QueryElement;->dateLessThan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return-void
.end method
