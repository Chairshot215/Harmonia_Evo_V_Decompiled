.class public Lcom/google/android/gsf/LoginData;
.super Ljava/lang/Object;
.source "LoginData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/LoginData$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gsf/LoginData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAuthtoken:Ljava/lang/String;

.field public mCaptchaAnswer:Ljava/lang/String;

.field public mCaptchaData:[B

.field public mCaptchaMimeType:Ljava/lang/String;

.field public mCaptchaToken:Ljava/lang/String;

.field public mEncryptedPassword:Ljava/lang/String;

.field public mFlags:I

.field public mJsonString:Ljava/lang/String;

.field public mOAuthAccessToken:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mService:Ljava/lang/String;

.field public mSid:Ljava/lang/String;

.field public mStatus:Lcom/google/android/gsf/LoginData$Status;

.field public mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/google/android/gsf/LoginData$1;

    invoke-direct {v0}, Lcom/google/android/gsf/LoginData$1;-><init>()V

    sput-object v0, Lcom/google/android/gsf/LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    .line 52
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 55
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 56
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    .line 52
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 55
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 56
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/LoginData;->readFromParcel(Landroid/os/Parcel;)V

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gsf/LoginData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gsf/LoginData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .local v0, len:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 146
    iput-object v3, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    .line 151
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, status:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 156
    iput-object v3, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 160
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 164
    return-void

    .line 148
    .end local v1           #status:Ljava/lang/String;
    :cond_0
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    .line 149
    iget-object v2, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    .line 158
    .restart local v1       #status:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/google/android/gsf/LoginData$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/LoginData$Status;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    if-nez v0, :cond_0

    .line 101
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    if-nez v0, :cond_1

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v0}, Lcom/google/android/gsf/LoginData$Status;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
