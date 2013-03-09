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
    .line 116
    new-instance v0, Lcom/google/android/gsf/LoginData$1;

    invoke-direct {v0}, Lcom/google/android/gsf/LoginData$1;-><init>()V

    sput-object v0, Lcom/google/android/gsf/LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    .line 51
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 54
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 55
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    .line 51
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 54
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 55
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/LoginData;->readFromParcel(Landroid/os/Parcel;)V

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gsf/LoginData$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gsf/LoginData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/LoginData;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    .line 51
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 54
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 55
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    .line 69
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 71
    iget v0, p1, Lcom/google/android/gsf/LoginData;->mFlags:I

    iput v0, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 72
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 73
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    const-string v1, "         status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "\n       username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, "\n       password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, "\n   enc password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, "\n        service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "\n      authtoken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v1, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "\n      oauthAccessToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "\n   captchatoken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "\n  captchaanswer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, "\n    captchadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v1, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 141
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    .line 146
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 150
    if-nez v0, :cond_1

    .line 151
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 155
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 159
    return-void

    .line 143
    :cond_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    .line 144
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {v0}, Lcom/google/android/gsf/LoginData$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/LoginData$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    if-nez v0, :cond_0

    .line 96
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaAnswer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/google/android/gsf/LoginData;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    if-nez v0, :cond_1

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mJsonString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mSid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mCaptchaData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v0}, Lcom/google/android/gsf/LoginData$Status;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
