.class public Ltwitter4j/Tweet;
.super Ltwitter4j/TwitterResponse;
.source "Tweet.java"


# static fields
.field private static final serialVersionUID:J = 0x3babbbc7515d16c3L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private fromUser:Ljava/lang/String;

.field private fromUserId:I

.field private id:J

.field private isoLanguageCode:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private toUser:Ljava/lang/String;

.field private toUserId:I


# direct methods
.method constructor <init>(Ltwitter4j/org/json/JSONObject;Ltwitter4j/TwitterSupport;)V
    .locals 4
    .parameter "tweet"
    .parameter "twitterSupport"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ltwitter4j/TwitterResponse;-><init>()V

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Ltwitter4j/Tweet;->toUserId:I

    .line 41
    iput-object v2, p0, Ltwitter4j/Tweet;->toUser:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Ltwitter4j/Tweet;->isoLanguageCode:Ljava/lang/String;

    .line 54
    :try_start_0
    const-string v1, "text"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Ltwitter4j/Tweet;->getString(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/Tweet;->text:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    const-string v1, "to_user_id"

    invoke-virtual {p1, v1}, Ltwitter4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ltwitter4j/Tweet;->toUserId:I

    .line 57
    const-string v1, "to_user"

    invoke-virtual {p1, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/Tweet;->toUser:Ljava/lang/String;
    :try_end_1
    .catch Ltwitter4j/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 62
    :goto_0
    :try_start_2
    const-string v1, "from_user"

    invoke-virtual {p1, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/Tweet;->fromUser:Ljava/lang/String;

    .line 63
    const-string v1, "id"

    invoke-virtual {p1, v1}, Ltwitter4j/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Ltwitter4j/Tweet;->id:J

    .line 64
    const-string v1, "from_user_id"

    invoke-virtual {p1, v1}, Ltwitter4j/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ltwitter4j/Tweet;->fromUserId:I
    :try_end_2
    .catch Ltwitter4j/org/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    :try_start_3
    const-string v1, "iso_language_code"

    invoke-virtual {p1, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/Tweet;->isoLanguageCode:Ljava/lang/String;
    :try_end_3
    .catch Ltwitter4j/org/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 70
    :goto_1
    :try_start_4
    const-string v1, "source"

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Ltwitter4j/Tweet;->getString(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/Tweet;->source:Ljava/lang/String;

    .line 71
    const-string v1, "profile_image_url"

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Ltwitter4j/Tweet;->getString(Ljava/lang/String;Ltwitter4j/org/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/Tweet;->profileImageUrl:Ljava/lang/String;

    .line 72
    const-string v1, "created_at"

    invoke-virtual {p1, v1}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-static {v1, v2}, Ltwitter4j/Tweet;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/Tweet;->createdAt:Ljava/util/Date;
    :try_end_4
    .catch Ltwitter4j/org/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 77
    return-void

    .line 73
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 74
    .local v0, jsone:Ltwitter4j/org/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ltwitter4j/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 67
    .end local v0           #jsone:Ltwitter4j/org/json/JSONException;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 58
    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 163
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 186
    :goto_0
    return v2

    .line 164
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v6

    goto :goto_0

    .line 166
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/Tweet;

    move-object v1, v0

    .line 168
    .local v1, that:Ltwitter4j/Tweet;
    iget v2, p0, Ltwitter4j/Tweet;->fromUserId:I

    iget v3, v1, Ltwitter4j/Tweet;->fromUserId:I

    if-eq v2, v3, :cond_3

    move v2, v6

    goto :goto_0

    .line 169
    :cond_3
    iget-wide v2, p0, Ltwitter4j/Tweet;->id:J

    iget-wide v4, v1, Ltwitter4j/Tweet;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_0

    .line 170
    :cond_4
    iget v2, p0, Ltwitter4j/Tweet;->toUserId:I

    iget v3, v1, Ltwitter4j/Tweet;->toUserId:I

    if-eq v2, v3, :cond_5

    move v2, v6

    goto :goto_0

    .line 171
    :cond_5
    iget-object v2, p0, Ltwitter4j/Tweet;->createdAt:Ljava/util/Date;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/Tweet;->createdAt:Ljava/util/Date;

    iget-object v3, v1, Ltwitter4j/Tweet;->createdAt:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v2, v6

    .line 172
    goto :goto_0

    .line 171
    :cond_7
    iget-object v2, v1, Ltwitter4j/Tweet;->createdAt:Ljava/util/Date;

    if-nez v2, :cond_6

    .line 173
    :cond_8
    iget-object v2, p0, Ltwitter4j/Tweet;->fromUser:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ltwitter4j/Tweet;->fromUser:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Tweet;->fromUser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v2, v6

    .line 174
    goto :goto_0

    .line 173
    :cond_a
    iget-object v2, v1, Ltwitter4j/Tweet;->fromUser:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 175
    :cond_b
    iget-object v2, p0, Ltwitter4j/Tweet;->isoLanguageCode:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ltwitter4j/Tweet;->isoLanguageCode:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Tweet;->isoLanguageCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v2, v6

    .line 176
    goto :goto_0

    .line 175
    :cond_d
    iget-object v2, v1, Ltwitter4j/Tweet;->isoLanguageCode:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 177
    :cond_e
    iget-object v2, p0, Ltwitter4j/Tweet;->profileImageUrl:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Ltwitter4j/Tweet;->profileImageUrl:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Tweet;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_f
    move v2, v6

    .line 178
    goto :goto_0

    .line 177
    :cond_10
    iget-object v2, v1, Ltwitter4j/Tweet;->profileImageUrl:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 179
    :cond_11
    iget-object v2, p0, Ltwitter4j/Tweet;->source:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Ltwitter4j/Tweet;->source:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Tweet;->source:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move v2, v6

    .line 180
    goto/16 :goto_0

    .line 179
    :cond_13
    iget-object v2, v1, Ltwitter4j/Tweet;->source:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 181
    :cond_14
    iget-object v2, p0, Ltwitter4j/Tweet;->text:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, p0, Ltwitter4j/Tweet;->text:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Tweet;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_15
    move v2, v6

    .line 182
    goto/16 :goto_0

    .line 181
    :cond_16
    iget-object v2, v1, Ltwitter4j/Tweet;->text:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 183
    :cond_17
    iget-object v2, p0, Ltwitter4j/Tweet;->toUser:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Ltwitter4j/Tweet;->toUser:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Tweet;->toUser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_18
    move v2, v6

    .line 184
    goto/16 :goto_0

    .line 183
    :cond_19
    iget-object v2, v1, Ltwitter4j/Tweet;->toUser:Ljava/lang/String;

    if-nez v2, :cond_18

    :cond_1a
    move v2, v7

    .line 186
    goto/16 :goto_0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Ltwitter4j/Tweet;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getFromUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ltwitter4j/Tweet;->fromUser:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserId()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Ltwitter4j/Tweet;->fromUserId:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Ltwitter4j/Tweet;->id:J

    return-wide v0
.end method

.method public getIsoLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Ltwitter4j/Tweet;->isoLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ltwitter4j/Tweet;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Ltwitter4j/Tweet;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ltwitter4j/Tweet;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getToUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ltwitter4j/Tweet;->toUser:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Ltwitter4j/Tweet;->toUserId:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 191
    iget-object v1, p0, Ltwitter4j/Tweet;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/Tweet;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .line 192
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/Tweet;->toUserId:I

    iget v3, p0, Ltwitter4j/Tweet;->toUserId:I

    ushr-int/lit8 v3, v3, 0x20

    xor-int/2addr v2, v3

    add-int v0, v1, v2

    .line 193
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Tweet;->toUser:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/Tweet;->toUser:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 194
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Tweet;->fromUser:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/Tweet;->fromUser:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 195
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/Tweet;->id:J

    iget-wide v4, p0, Ltwitter4j/Tweet;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 196
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/Tweet;->fromUserId:I

    iget v3, p0, Ltwitter4j/Tweet;->fromUserId:I

    ushr-int/lit8 v3, v3, 0x20

    xor-int/2addr v2, v3

    add-int v0, v1, v2

    .line 197
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Tweet;->isoLanguageCode:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/Tweet;->isoLanguageCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v1, v2

    .line 198
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Tweet;->source:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/Tweet;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v1, v2

    .line 199
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Tweet;->profileImageUrl:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/Tweet;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v1, v2

    .line 200
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Tweet;->createdAt:Ljava/util/Date;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/Tweet;->createdAt:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v1, v2

    .line 201
    return v0

    .end local v0           #result:I
    :cond_0
    move v0, v7

    .line 191
    goto :goto_0

    .restart local v0       #result:I
    :cond_1
    move v2, v7

    .line 193
    goto :goto_1

    :cond_2
    move v2, v7

    .line 194
    goto :goto_2

    :cond_3
    move v2, v7

    .line 197
    goto :goto_3

    :cond_4
    move v2, v7

    .line 198
    goto :goto_4

    :cond_5
    move v2, v7

    .line 199
    goto :goto_5

    :cond_6
    move v2, v7

    .line 200
    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 206
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Tweet{text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Tweet;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", toUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Tweet;->toUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", toUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Tweet;->toUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fromUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Tweet;->fromUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Tweet;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fromUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Tweet;->fromUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isoLanguageCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Tweet;->isoLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Tweet;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", profileImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Tweet;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Tweet;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
