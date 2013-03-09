.class public Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
.super Ljava/lang/Object;
.source "HtcAkaAuthenticationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private auts:[B

.field private ck:[B

.field ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

.field private ik:[B

.field private res:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_1

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_2

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_3

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_SIM_TYPE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_SIM_TYPE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    :goto_4
    return-void

    :cond_0
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    goto :goto_1

    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    goto :goto_2

    :cond_3
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->INVALID_RAND:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SERVICE_FAILURE:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4

    :cond_7
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4

    :cond_8
    sget-object v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4

    :cond_9
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4

    :cond_a
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    sget-object v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    return-void
.end method

.method public constructor <init>([B[B[B)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    iput-object p3, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuts()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    return-object v0
.end method

.method public getCk()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    return-object v0
.end method

.method public getError()Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getException()Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    return-object v0
.end method

.method public getIk()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    return-object v0
.end method

.method public getRes()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    invoke-static {v2, v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iK = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    invoke-static {v2, v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RES = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    invoke-static {v2, v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AUTS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    invoke-static {v2, v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([BZ)Ljava/lang/String;

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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ck:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ik:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->res:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->auts:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4
.end method
