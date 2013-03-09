.class public Lcom/htc/android/mail/util/ActivityCallback;
.super Ljava/lang/Object;
.source "ActivityCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/util/ActivityCallback$Binder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/util/ActivityCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIActivityCallback:Lcom/htc/android/mail/util/IActivityCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/htc/android/mail/util/ActivityCallback$1;

    invoke-direct {v0}, Lcom/htc/android/mail/util/ActivityCallback$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/util/ActivityCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/util/ActivityCallback;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/util/ActivityCallback$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/htc/android/mail/util/ActivityCallback;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/android/mail/util/IActivityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/htc/android/mail/util/ActivityCallback;->mIActivityCallback:Lcom/htc/android/mail/util/IActivityCallback;

    .line 13
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getReadSeq()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/util/ActivityCallback;->mIActivityCallback:Lcom/htc/android/mail/util/IActivityCallback;

    invoke-interface {v1}, Lcom/htc/android/mail/util/IActivityCallback;->getReadSeq()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 21
    :goto_0
    return-object v1

    .line 18
    :catch_0
    move-exception v0

    .line 20
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 21
    const-string v1, ""

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/util/IActivityCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/util/IActivityCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/util/ActivityCallback;->mIActivityCallback:Lcom/htc/android/mail/util/IActivityCallback;

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/android/mail/util/ActivityCallback;->mIActivityCallback:Lcom/htc/android/mail/util/IActivityCallback;

    invoke-interface {v0}, Lcom/htc/android/mail/util/IActivityCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 31
    return-void
.end method
