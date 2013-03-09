.class public Lcom/gracenote/mmid/MobileSDK/GNResult;
.super Ljava/lang/Object;
.source "GNResult.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ErrorStatusRange:I = 0x3e8

.field public static final FPXFailure:I = 0xbb8

.field public static final FPXFingerprintingFailure:I = 0xbba

.field public static final FPXNotMusic:I = 0xbbb

.field public static final FPXRecordingFailure:I = 0xbb9

.field public static final NoError:I = 0x0

.field public static final NoStatus:I = 0x0

.field private static final StatusBase:I = 0x2328

.field public static final UnhandledError:I = 0x3e8

.field public static final WSAlbumFetchNoMatchStatus:I = 0x232c

.field public static final WSFailure:I = 0x1388

.field public static final WSFingerprintSearchNoMatchStatus:I = 0x2329

.field public static final WSInvalidDataFormatFailure:I = 0x138a

.field public static final WSLyricFragmentSearchNoMatchStatus:I = 0x232b

.field public static final WSNetworkFailure:I = 0x1389

.field public static final WSRegistrationFailure:I = 0x138c

.field public static final WSRegistrationInvalidClientIdFailure:I = 0x138b

.field public static final WSTextSearchNoMatchStatus:I = 0x232a


# instance fields
.field private config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

.field private errCode:I

.field private errMessage:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/gracenote/mmid/MobileSDK/GNResult;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/gracenote/mmid/MobileSDK/GNResult;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V
    .locals 2
    .parameter "inConfig"

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errMessage:Ljava/lang/String;

    .line 124
    iput v1, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errCode:I

    .line 125
    iput v1, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->statusCode:I

    .line 126
    sget-boolean v0, Lcom/gracenote/mmid/MobileSDK/GNResult;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 128
    return-void
.end method

.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNResult;)V
    .locals 1
    .parameter "inResult"

    .prologue
    .line 131
    iget-object v0, p1, Lcom/gracenote/mmid/MobileSDK/GNResult;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-direct {p0, v0}, Lcom/gracenote/mmid/MobileSDK/GNResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    .line 132
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNResult;->getErrCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gracenote/mmid/MobileSDK/GNResult;->setErrCode(I)V

    .line 133
    invoke-virtual {p1}, Lcom/gracenote/mmid/MobileSDK/GNResult;->getErrMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gracenote/mmid/MobileSDK/GNResult;->setErrMessage(Ljava/lang/String;)V

    .line 134
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/gracenote/mmid/MobileSDK/GNConfig;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errCode:I

    return v0
.end method

.method public getErrMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->statusCode:I

    return v0
.end method

.method public isAlbumFetchNoMatchStatus()Z
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->statusCode:I

    const/16 v1, 0x232c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnyFingerprintFailure()Z
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errCode:I

    const/16 v1, 0xbb8

    if-lt v0, v1, :cond_0

    .line 231
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errCode:I

    const/16 v1, 0xfa0

    if-ge v0, v1, :cond_0

    .line 232
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnySearchNoMatchStatus()Z
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->statusCode:I

    const/16 v1, 0x2329

    if-lt v0, v1, :cond_0

    .line 300
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errCode:I

    const/16 v1, 0x232b

    if-gt v0, v1, :cond_0

    .line 301
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnyWebservicesFailure()Z
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errCode:I

    const/16 v1, 0x1388

    if-lt v0, v1, :cond_0

    .line 266
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errCode:I

    const/16 v1, 0x1770

    if-ge v0, v1, :cond_0

    .line 267
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailure()Z
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFingerprintSearchNoMatchStatus()Z
    .locals 2

    .prologue
    .line 315
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->statusCode:I

    const/16 v1, 0x2329

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFingerprintingFailure()Z
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errCode:I

    const/16 v1, 0xbba

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidDataFormatFailure()Z
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errCode:I

    const/16 v1, 0x138a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLyricFragmentSearchNoMatchStatus()Z
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->statusCode:I

    const/16 v1, 0x232b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkFailure()Z
    .locals 2

    .prologue
    .line 280
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errCode:I

    const/16 v1, 0x1389

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordingFailure()Z
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errCode:I

    const/16 v1, 0xbb9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextSearchNoMatchStatus()Z
    .locals 2

    .prologue
    .line 326
    iget v0, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->statusCode:I

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setConfig(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V
    .locals 0
    .parameter "inValue"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 221
    return-void
.end method

.method setErrCode(I)V
    .locals 0
    .parameter "inValue"

    .prologue
    .line 193
    iput p1, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errCode:I

    .line 194
    return-void
.end method

.method setErrMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "inValue"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->errMessage:Ljava/lang/String;

    .line 181
    return-void
.end method

.method setStatusCode(I)V
    .locals 0
    .parameter "inValue"

    .prologue
    .line 206
    iput p1, p0, Lcom/gracenote/mmid/MobileSDK/GNResult;->statusCode:I

    .line 207
    return-void
.end method
