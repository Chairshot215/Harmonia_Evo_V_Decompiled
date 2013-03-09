.class public Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
.super Ljava/lang/Object;
.source "EASMoveItems.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EASMoveItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final FROM_LOCAL:I = 0x2

.field public static final FROM_SERVER:I = 0x1


# instance fields
.field public dstFldName:Ljava/lang/String;

.field public dstFldServerId:Ljava/lang/String;

.field public fromSvrFlag:I

.field public messageId:J

.field public srcFldName:Ljava/lang/String;

.field public srcFldServerId:Ljava/lang/String;

.field public srcMsgServerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->messageId:J

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->fromSvrFlag:I

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->messageId:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->fromSvrFlag:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcMsgServerId:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcFldServerId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcFldName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->dstFldServerId:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->dstFldName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASMoveItems$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->messageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->fromSvrFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcMsgServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcFldServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcFldName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->dstFldServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->dstFldName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return-void
.end method
