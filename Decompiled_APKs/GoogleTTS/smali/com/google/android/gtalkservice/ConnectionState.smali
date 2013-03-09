.class public final Lcom/google/android/gtalkservice/ConnectionState;
.super Ljava/lang/Object;
.source "ConnectionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gtalkservice/ConnectionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionState$1;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/ConnectionState$1;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/ConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    .line 56
    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 98
    packed-switch p0, :pswitch_data_0

    .line 112
    const-string v0, "IDLE"

    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    const-string v0, "RECONNECTION_SCHEDULED"

    goto :goto_0

    .line 103
    :pswitch_1
    const-string v0, "CONNECTING"

    goto :goto_0

    .line 106
    :pswitch_2
    const-string v0, "AUTHENTICATED"

    goto :goto_0

    .line 109
    :pswitch_3
    const-string v0, "ONLINE"

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 122
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void
.end method
