.class public Lcom/htc/lockscreen/telephony/PhoneState;
.super Ljava/lang/Object;
.source "PhoneState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RING:I = 0x1

.field public static final CALL_STYLE_NORMAL:I = 0x0

.field public static final CALL_STYLE_VIDEO:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/telephony/PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_SENDMSG:I = 0x2

.field public static final FLAG_SILENT:I = 0x1


# instance fields
.field public mCallIcon:Landroid/graphics/Bitmap;

.field public mCallState:I

.field public mCallStyle:I

.field public mCallType:Ljava/lang/String;

.field public mDisplayNumber:Ljava/lang/String;

.field public mEventDesp:Ljava/lang/String;

.field public mEventIcon:Landroid/graphics/Bitmap;

.field public mFlag:I

.field public mHint:Ljava/lang/String;

.field public mId:I

.field public mLocation:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mOpName:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPhoto:Landroid/graphics/Bitmap;

.field public mSNIcon:Landroid/graphics/Bitmap;

.field public mSNStatus:Ljava/lang/String;

.field public mService:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/htc/lockscreen/telephony/PhoneState$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/telephony/PhoneState$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/telephony/PhoneState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "callState"
    .parameter "opName"
    .parameter "callType"
    .parameter "phone"
    .parameter "name"
    .parameter "displayNumber"
    .parameter "location"
    .parameter "hint"
    .parameter "snStatus"
    .parameter "snIcon"
    .parameter "eventDesp"
    .parameter "eventIcon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 34
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 35
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 36
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 38
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    .line 39
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    .line 53
    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 54
    iput-object p2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 57
    iput-object p5, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 59
    iput-object p7, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 60
    iput-object p8, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 61
    iput-object p9, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 62
    iput-object p10, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 63
    iput-object p11, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 64
    iput-object p12, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 34
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 35
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 36
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 38
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    .line 39
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 34
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 35
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 36
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 38
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    .line 39
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 90
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    .line 94
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 97
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    .line 98
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 101
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_4

    .line 102
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    .line 104
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    .line 105
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public getBirthdayInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    return v0
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSocailState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setBirthdayInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setCallState(I)V
    .locals 0
    .parameter "callState"

    .prologue
    .line 249
    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 250
    return-void
.end method

.method public setDisplayNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 241
    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 242
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 225
    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 226
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setPhoneComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 233
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 234
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "photo"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 174
    return-void
.end method

.method public setSocailState(Ljava/lang/String;)V
    .locals 0
    .parameter "social"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setSocialIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 166
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    :goto_1
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 146
    :goto_2
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    :goto_3
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 161
    :goto_4
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    return-void

    .line 127
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 151
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 159
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4
.end method
