.class public Lcom/htc/android/mail/eassvc/pim/EASMailbox;
.super Ljava/lang/Object;
.source "EASMailbox.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASMailbox;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public DisplayName:Ljava/lang/String;

.field public HierarchyName:Ljava/lang/String;

.field public ParentID:Ljava/lang/String;

.field public ServerID:Ljava/lang/String;

.field public SyncKey:Ljava/lang/String;

.field public Type:Ljava/lang/String;

.field public defaultSync:Z

.field public enableSyncDown:Z

.field public enableSyncUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASMailbox$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASMailbox$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->Type:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->enableSyncDown:Z

    .line 19
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->enableSyncUp:Z

    .line 20
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->defaultSync:Z

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->Type:Ljava/lang/String;

    .line 18
    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->enableSyncDown:Z

    .line 19
    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->enableSyncUp:Z

    .line 20
    iput-boolean v2, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->defaultSync:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->ServerID:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->ParentID:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->DisplayName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->HierarchyName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->Type:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->SyncKey:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->enableSyncDown:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->enableSyncUp:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->defaultSync:Z

    .line 64
    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v0, v2

    .line 62
    goto :goto_1

    :cond_2
    move v1, v2

    .line 63
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/pim/EASMailbox$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/pim/EASMailbox;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->ServerID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->ParentID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->DisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->HierarchyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->Type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->SyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->enableSyncDown:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->enableSyncUp:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/pim/EASMailbox;->defaultSync:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0

    :cond_1
    move v0, v2

    .line 34
    goto :goto_1

    :cond_2
    move v1, v2

    .line 35
    goto :goto_2
.end method
