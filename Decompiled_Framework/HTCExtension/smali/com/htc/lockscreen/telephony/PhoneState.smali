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

    new-instance v0, Lcom/htc/lockscreen/telephony/PhoneState$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/telephony/PhoneState$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/telephony/PhoneState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    iput-object p2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    iput-object p6, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    iput-object p7, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    iput-object p8, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    iput-object p9, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    iput-object p10, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    iput-object p11, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    iput-object p12, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBirthdayInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    return v0
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSocailState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setBirthdayInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    return-void
.end method

.method public setCallState(I)V
    .locals 0

    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    return-void
.end method

.method public setDisplayNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPhoneComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSocailState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    return-void
.end method

.method public setSocialIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

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
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4
.end method
