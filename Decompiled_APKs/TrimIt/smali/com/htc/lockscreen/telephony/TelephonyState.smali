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

    .prologue
    .line 165
    new-instance v0, Lcom/htc/lockscreen/telephony/TelephonyState$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/telephony/TelephonyState$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/telephony/TelephonyState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZLjava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 1
    .parameter "state"
    .parameter "networkState"
    .parameter "isAirplaneMode"
    .parameter "plmn"
    .parameter "spn"
    .parameter "uiccState"
    .parameter "provision"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    .line 57
    iput p1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    .line 58
    iput p2, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    .line 59
    iput-boolean p3, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    .line 61
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iput-object p4, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    .line 63
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iput-object p5, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    .line 66
    :cond_1
    iput p6, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    .line 67
    iput-boolean p7, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    .line 80
    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0

    :cond_1
    move v1, v2

    .line 78
    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccCard$State;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 1
    .parameter "state"
    .parameter "networkState"
    .parameter "isAirplaneMode"
    .parameter "plmn"
    .parameter "spn"
    .parameter "uiccState"
    .parameter "provision"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/telephony/TelephonyState;->setSimState(Lcom/android/internal/telephony/IccCard$State;)V

    .line 37
    iput p2, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    .line 38
    iput-boolean p3, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    .line 40
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iput-object p4, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    .line 42
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iput-object p5, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    .line 45
    :cond_1
    iput p6, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    .line 46
    iput-boolean p7, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    .line 48
    return-void
.end method

.method private setSimState(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 95
    if-nez p1, :cond_0

    .line 96
    iput v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    .line 125
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_1

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 101
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_2

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 104
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_3

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 107
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_4

    .line 108
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 110
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_5

    .line 111
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 113
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_6

    .line 114
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 116
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_7

    .line 117
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 119
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, p1, :cond_8

    .line 120
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0

    .line 123
    :cond_8
    iput v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCard$State;
    .locals 3

    .prologue
    .line 128
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 129
    .local v0, state:Lcom/android/internal/telephony/IccCard$State;
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 130
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 133
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 135
    :cond_2
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 136
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 138
    :cond_3
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 139
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 141
    :cond_4
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 142
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 144
    :cond_5
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 145
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 147
    :cond_6
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 148
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 150
    :cond_7
    iget v1, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 151
    sget-object v0, Lcom/android/internal/telephony/HtcIfIccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getSimStateInt()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    iget v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSimState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-boolean v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mIsAirPlaneMode:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mPlmn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 89
    iget v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-boolean v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUICCOperator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return-void

    :cond_0
    move v0, v2

    .line 86
    goto :goto_0

    :cond_1
    move v1, v2

    .line 90
    goto :goto_1
.end method
