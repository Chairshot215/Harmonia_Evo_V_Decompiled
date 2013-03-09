.class public Lcom/htc/android/mail/server/Server$SyncResult;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncResult"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/server/Server$SyncResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountId:J

.field public firstMessageId:J

.field public firstMessageIdPosition:I

.field public unreadNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lcom/htc/android/mail/server/Server$SyncResult$1;

    invoke-direct {v0}, Lcom/htc/android/mail/server/Server$SyncResult$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/server/Server$SyncResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 390
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageId:J

    .line 388
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageIdPosition:I

    .line 392
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 415
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageId:J

    .line 388
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageIdPosition:I

    .line 416
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/server/Server$SyncResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 417
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/server/Server$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/htc/android/mail/server/Server$SyncResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/server/Server$SyncResult;->accountId:J

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageId:J

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/server/Server$SyncResult;->unreadNum:I

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageIdPosition:I

    .line 424
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 399
    iget-wide v0, p0, Lcom/htc/android/mail/server/Server$SyncResult;->accountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 400
    iget-wide v0, p0, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 401
    iget v0, p0, Lcom/htc/android/mail/server/Server$SyncResult;->unreadNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Lcom/htc/android/mail/server/Server$SyncResult;->firstMessageIdPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    return-void
.end method
