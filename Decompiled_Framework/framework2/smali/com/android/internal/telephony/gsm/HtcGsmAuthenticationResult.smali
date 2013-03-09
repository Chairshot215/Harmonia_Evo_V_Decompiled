.class public Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
.super Ljava/lang/Object;
.source "HtcGsmAuthenticationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

.field kc:J

.field sres:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->sres:I

    iput-wide p2, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->kc:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->sres:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->kc:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_SIM_TYPE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_SIM_TYPE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_0

    :cond_5
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_0

    :cond_6
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getError()Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getException()Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    return-object v0
.end method

.method public getKc()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->kc:J

    return-wide v0
.end method

.method public getSres()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->sres:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SRES = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->sres:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Kc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->kc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v0, "None"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->sres:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->kc:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
