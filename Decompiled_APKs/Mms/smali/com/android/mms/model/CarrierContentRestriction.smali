.class public Lcom/android/mms/model/CarrierContentRestriction;
.super Ljava/lang/Object;
.source "CarrierContentRestriction.java"

# interfaces
.implements Lcom/android/mms/model/ContentRestriction;


# static fields
.field public static final IMAGE_HEIGHT_LIMIT:I = 0x1e0

.field public static final IMAGE_WIDTH_LIMIT:I = 0x280

.field public static MESSAGE_HEADER_BUFFER:I = 0x0

.field public static MESSAGE_SIZE_LIMIT:I = 0x0

.field private static final MESSAGE_SIZE_MARGIN:I = 0x1400

.field private static final sSupportedAudioTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedImageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedVideoTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const v0, 0x4b000

    sput v0, Lcom/android/mms/model/CarrierContentRestriction;->MESSAGE_SIZE_LIMIT:I

    .line 45
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/model/CarrierContentRestriction;->MESSAGE_HEADER_BUFFER:I

    .line 87
    invoke-static {}, Lcom/google/android/mms/ContentType;->getImageTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    .line 88
    invoke-static {}, Lcom/google/android/mms/ContentType;->getAudioTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    .line 89
    invoke-static {}, Lcom/google/android/mms/ContentType;->getVideoTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/mms/model/CarrierContentRestriction;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public static getMaxResolutionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const-string v0, "640x480"

    return-object v0
.end method


# virtual methods
.method public checkAudioContentType(Ljava/lang/String;)V
    .locals 3
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported audio content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    return-void
.end method

.method public checkImageContentType(Ljava/lang/String;)V
    .locals 3
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported image content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    return-void
.end method

.method public checkMessageSize(II)V
    .locals 5
    .parameter "messageSize"
    .parameter "increaseSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 98
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 99
    :cond_0
    new-instance v2, Lcom/android/mms/ContentRestrictionException;

    const-string v3, "Negative message size or increase size"

    invoke-direct {v2, v3}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_1
    add-int v0, p1, p2

    .line 105
    .local v0, newSize:I
    iget-object v2, p0, Lcom/android/mms/model/CarrierContentRestriction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 106
    .local v1, prefs:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/mms/model/CarrierContentRestriction;->mContext:Landroid/content/Context;

    const-string v3, "pref_key_mms_max_size"

    const-string v4, "3"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertMaxMmsSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/mms/model/CarrierContentRestriction;->MESSAGE_SIZE_LIMIT:I

    .line 123
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPduHeaderBuffer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    sget v2, Lcom/android/mms/model/CarrierContentRestriction;->MESSAGE_HEADER_BUFFER:I

    invoke-static {}, Lcom/android/mms/MmsApp;->getKiloSize()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 127
    :cond_2
    if-ltz v0, :cond_3

    sget v2, Lcom/android/mms/model/CarrierContentRestriction;->MESSAGE_SIZE_LIMIT:I

    if-le v0, v2, :cond_4

    .line 128
    :cond_3
    new-instance v2, Lcom/android/mms/ExceedMessageSizeException;

    const-string v3, "Exceed message size limitation"

    invoke-direct {v2, v3}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_4
    return-void
.end method

.method public checkResolution(II)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x280

    const/16 v0, 0x1e0

    .line 134
    if-lt p1, p2, :cond_1

    .line 135
    if-gt p1, v1, :cond_0

    if-le p2, v0, :cond_3

    .line 136
    :cond_0
    new-instance v0, Lcom/android/mms/ResolutionException;

    const-string v1, "content resolution exceeds restriction."

    invoke-direct {v0, v1}, Lcom/android/mms/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    if-gt p2, v1, :cond_2

    if-le p1, v0, :cond_3

    .line 141
    :cond_2
    new-instance v0, Lcom/android/mms/ResolutionException;

    const-string v1, "content resolution exceeds restriction."

    invoke-direct {v0, v1}, Lcom/android/mms/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_3
    return-void
.end method

.method public checkVideoContentType(Ljava/lang/String;)V
    .locals 3
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    return-void
.end method

.method public getMaxSizePerSmsMessage()I
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/android/mms/MmsApp;->getMaxSMSConcatenatedNumber()I

    move-result v0

    return v0
.end method

.method public getMaxSlidesPerMmsMessage()I
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Lcom/android/mms/MmsApp;->getMaxMMSSlideNumber()I

    move-result v0

    return v0
.end method

.method public getMessageSizeLimit()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 186
    iget-object v2, p0, Lcom/android/mms/model/CarrierContentRestriction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/mms/model/CarrierContentRestriction;->mContext:Landroid/content/Context;

    const-string v3, "pref_key_mms_max_size"

    const-string v4, "3"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertMaxMmsSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/mms/model/CarrierContentRestriction;->MESSAGE_SIZE_LIMIT:I

    .line 191
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSignature()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const-string v2, "pref_key_signature_enabled"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const-string v2, "pref_key_signature_text"

    iget-object v3, p0, Lcom/android/mms/model/CarrierContentRestriction;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/mms/ui/MessageUtils;->getDefaultPrefSignature(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 194
    .local v1, signatureLength:I
    sget v2, Lcom/android/mms/model/CarrierContentRestriction;->MESSAGE_SIZE_LIMIT:I

    sub-int/2addr v2, v1

    sput v2, Lcom/android/mms/model/CarrierContentRestriction;->MESSAGE_SIZE_LIMIT:I

    .line 199
    .end local v1           #signatureLength:I
    :cond_0
    sget v2, Lcom/android/mms/model/CarrierContentRestriction;->MESSAGE_SIZE_LIMIT:I

    add-int/lit16 v2, v2, -0x1400

    return v2
.end method
