.class public final Lcom/android/internal/telephony/HtcIsimData;
.super Ljava/lang/Object;
.source "HtcIsimData.java"


# static fields
.field public static final ADDRESS_TYPE_FQDN_KEY:Ljava/lang/String; = "address_type_fqdn"

.field public static final ADDRESS_TYPE_IPV4_KEY:Ljava/lang/String; = "address_type_ipv4"

.field public static final ADDRESS_TYPE_IPV6_KEY:Ljava/lang/String; = "address_type_ipv6"

.field public static mAid:Ljava/lang/String;

.field private static mBtid:Ljava/lang/String;

.field public static mCDMA_IMSI:Ljava/lang/String;

.field public static mCDMA_MDN:Ljava/lang/String;

.field public static mDOMAIN:Ljava/lang/String;

.field public static mGSM_IMSI:Ljava/lang/String;

.field public static mGSM_MSISDN:Ljava/lang/String;

.field private static mHasISIM:Z

.field public static mIMPI:Ljava/lang/String;

.field public static mIMPUList:[Ljava/lang/String;

.field private static mIsGBASupported:Z

.field private static mKeyLifetime:Ljava/lang/String;

.field public static mPCSCFList:Landroid/os/Bundle;

.field private static mRand:[B

.field private static mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mIMPI:Ljava/lang/String;

    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mDOMAIN:Ljava/lang/String;

    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mIMPUList:[Ljava/lang/String;

    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mPCSCFList:Landroid/os/Bundle;

    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mGSM_IMSI:Ljava/lang/String;

    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_IMSI:Ljava/lang/String;

    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mGSM_MSISDN:Ljava/lang/String;

    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_MDN:Ljava/lang/String;

    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/HtcIsimData;->mSessionId:I

    sput-boolean v2, Lcom/android/internal/telephony/HtcIsimData;->mHasISIM:Z

    sput-boolean v2, Lcom/android/internal/telephony/HtcIsimData;->mIsGBASupported:Z

    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mRand:[B

    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mBtid:Ljava/lang/String;

    sput-object v1, Lcom/android/internal/telephony/HtcIsimData;->mKeyLifetime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetBtid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mBtid:Ljava/lang/String;

    return-object v0
.end method

.method public static GetDOMAIN()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mDOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static GetIMPI()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mIMPI:Ljava/lang/String;

    return-object v0
.end method

.method public static GetIMPU()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mIMPUList:[Ljava/lang/String;

    return-object v0
.end method

.method public static GetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v1, "gsm"

    const-string v0, "cdma"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mGSM_IMSI:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_IMSI:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static GetKeyLifetime()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mKeyLifetime:Ljava/lang/String;

    return-object v0
.end method

.method public static GetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v1, "gsm"

    const-string v0, "cdma"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mGSM_MSISDN:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_MDN:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static GetPCSCF()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mPCSCFList:Landroid/os/Bundle;

    return-object v0
.end method

.method public static GetRand()[B
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/HtcIsimData;->mRand:[B

    return-object v0
.end method

.method public static GetSessionId()I
    .locals 1

    sget v0, Lcom/android/internal/telephony/HtcIsimData;->mSessionId:I

    return v0
.end method

.method public static SetBtid(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mBtid:Ljava/lang/String;

    return-void
.end method

.method public static SetCDMA_IMSI(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_IMSI:Ljava/lang/String;

    return-void
.end method

.method public static SetCDMA_MDN(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mCDMA_MDN:Ljava/lang/String;

    return-void
.end method

.method public static SetDOMAIN(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mDOMAIN:Ljava/lang/String;

    return-void
.end method

.method public static SetGSM_IMSI(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mGSM_IMSI:Ljava/lang/String;

    return-void
.end method

.method public static SetGSM_MSISDN(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mGSM_MSISDN:Ljava/lang/String;

    return-void
.end method

.method public static SetHasISIM(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/internal/telephony/HtcIsimData;->mHasISIM:Z

    return-void
.end method

.method public static SetIMPI(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mIMPI:Ljava/lang/String;

    return-void
.end method

.method public static SetIMPU([Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mIMPUList:[Ljava/lang/String;

    return-void
.end method

.method public static SetIsGBASupported(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/internal/telephony/HtcIsimData;->mIsGBASupported:Z

    return-void
.end method

.method public static SetKeyLifetime(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mKeyLifetime:Ljava/lang/String;

    return-void
.end method

.method public static SetPCSCF(Landroid/os/Bundle;)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mPCSCFList:Landroid/os/Bundle;

    return-void
.end method

.method public static SetRand([B)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/HtcIsimData;->mRand:[B

    return-void
.end method

.method public static SetSessionId(I)V
    .locals 0

    sput p0, Lcom/android/internal/telephony/HtcIsimData;->mSessionId:I

    return-void
.end method

.method public static hasISIM()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/HtcIsimData;->mHasISIM:Z

    return v0
.end method

.method public static isGBASupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/HtcIsimData;->mIsGBASupported:Z

    return v0
.end method
