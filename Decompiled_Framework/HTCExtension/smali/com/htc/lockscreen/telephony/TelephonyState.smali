.class public Lcom/htc/lockscreen/telephony/TelephonyState;
.super Ljava/lang/Object;
.source "TelephonyState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/telephony/TelephonyState;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICC_ABSENT:I = 0x1

.field public static final ICC_EXPIRED:I = 0x8

.field public static final ICC_FAIL:I = 0x6

.field public static final ICC_IMEI_LOCKED:I = 0x7

.field public static final ICC_NETWORK_LOCKED:I = 0x5

.field public static final ICC_PIN_REQUIRED:I = 0x3

.field public static final ICC_PUK_REQUIRED:I = 0x4

.field public static final ICC_READY:I = 0x2

.field public static final ICC_UNKNOW:I


# instance fields
.field public mIsAirPlaneMode:Z

.field public mNetworkServiceStatus:I

.field public mPlmn:Ljava/lang/CharSequence;

.field public mSimState:I

.field public mSpn:Ljava/lang/CharSequence;

.field public mUICCOperator:Ljava/lang/String;

.field public mUiccProvision:Z

.field public mUiccState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/lockscreen/telephony/TelephonyState$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/telephony/TelephonyState$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/telephony/TelephonyState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZLjava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    iput p1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    iput p2, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    iput-boolean p3, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p4, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p5, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    :cond_1
    iput p6, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    iput-boolean p7, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccCard$State;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/htc/lockscreen/telephony/TelephonyState;->setSimState(Lcom/android/internal/telephony/IccCard$State;)V

    iput p2, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    iput-boolean p3, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p4, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p5, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    :cond_1
    iput p6, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    iput-boolean p7, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    return-void
.end method

.method private setSimState(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_4

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_5

    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_7

    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_8

    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    :cond_8
    iput v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getSimStateInt()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
