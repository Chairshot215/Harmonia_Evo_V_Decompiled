.class public Lcom/android/providers/contacts/HtcUtils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HtcUtils/Utils$SpeedDial;
    }
.end annotation


# static fields
.field private static mForceEnable360:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Utils;->mForceEnable360:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckEmailAddress(Ljava/lang/String;)Z
    .locals 11
    .parameter "addr"

    .prologue
    const/16 v10, 0x2e

    const/4 v7, 0x0

    .line 167
    if-nez p0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v7

    .line 170
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 171
    .local v6, value:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .line 173
    .local v2, last:I
    const/4 v5, 0x0

    .line 174
    .local v5, nIndex:I
    const/4 v0, 0x1

    .line 175
    .local v0, bParseFront:Z
    const/4 v3, 0x0

    .line 176
    .local v3, nBackDot:I
    const/4 v4, 0x0

    .line 177
    .local v4, nErrorCode:I
    const/4 v1, 0x0

    .line 179
    .local v1, bText:Z
    :goto_1
    if-gt v5, v2, :cond_8

    .line 180
    aget-char v8, v6, v5

    const/16 v9, 0x61

    if-lt v8, v9, :cond_2

    aget-char v8, v6, v5

    const/16 v9, 0x7a

    if-le v8, v9, :cond_5

    :cond_2
    aget-char v8, v6, v5

    const/16 v9, 0x41

    if-lt v8, v9, :cond_3

    aget-char v8, v6, v5

    const/16 v9, 0x5a

    if-le v8, v9, :cond_5

    :cond_3
    aget-char v8, v6, v5

    const/16 v9, 0x30

    if-lt v8, v9, :cond_4

    aget-char v8, v6, v5

    const/16 v9, 0x39

    if-le v8, v9, :cond_5

    :cond_4
    aget-char v8, v6, v5

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_5

    aget-char v8, v6, v5

    const/16 v9, 0x5f

    if-ne v8, v9, :cond_7

    .line 184
    :cond_5
    const/4 v1, 0x1

    .line 236
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 185
    :cond_7
    aget-char v8, v6, v5

    if-ne v8, v10, :cond_d

    .line 186
    if-nez v0, :cond_6

    .line 187
    add-int/lit8 v3, v3, 0x1

    .line 188
    if-nez v1, :cond_c

    .line 189
    const/4 v4, 0x1

    .line 239
    :cond_8
    :goto_3
    if-nez v4, :cond_b

    .line 240
    if-nez v3, :cond_9

    .line 241
    const/16 v4, 0x11

    .line 242
    :cond_9
    if-eqz v0, :cond_a

    .line 243
    const/16 v4, 0x12

    .line 244
    :cond_a
    if-nez v1, :cond_b

    .line 245
    const/16 v4, 0x13

    .line 252
    :cond_b
    if-nez v4, :cond_0

    .line 253
    const/4 v7, 0x1

    goto :goto_0

    .line 192
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 194
    :cond_d
    aget-char v8, v6, v5

    const/16 v9, 0x25

    if-ne v8, v9, :cond_e

    .line 195
    if-nez v0, :cond_6

    .line 196
    const/4 v4, 0x2

    .line 197
    goto :goto_3

    .line 199
    :cond_e
    aget-char v8, v6, v5

    const/16 v9, 0x40

    if-ne v8, v9, :cond_10

    .line 200
    if-nez v0, :cond_f

    .line 201
    const/4 v4, 0x3

    .line 202
    goto :goto_3

    .line 204
    :cond_f
    const/4 v0, 0x0

    .line 205
    const/4 v1, 0x0

    goto :goto_2

    .line 206
    :cond_10
    aget-char v8, v6, v5

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_11

    aget-char v8, v6, v5

    const/16 v9, 0x3b

    if-ne v8, v9, :cond_16

    .line 207
    :cond_11
    if-eqz v0, :cond_12

    .line 208
    const/4 v4, 0x4

    .line 209
    goto :goto_3

    .line 211
    :cond_12
    if-nez v3, :cond_13

    .line 212
    const/4 v4, 0x5

    .line 213
    goto :goto_3

    .line 216
    :cond_13
    if-eqz v0, :cond_14

    .line 217
    const/4 v4, 0x6

    .line 218
    goto :goto_3

    .line 221
    :cond_14
    add-int/lit8 v8, v5, -0x1

    if-ltz v8, :cond_15

    .line 222
    add-int/lit8 v8, v5, -0x1

    aget-char v8, v6, v8

    if-ne v8, v10, :cond_15

    .line 223
    const/4 v4, 0x7

    .line 224
    goto :goto_3

    .line 228
    :cond_15
    const/4 v0, 0x1

    .line 229
    const/4 v3, 0x0

    .line 230
    const/4 v1, 0x0

    goto :goto_2

    .line 233
    :cond_16
    const/16 v4, 0x8

    .line 234
    goto :goto_3
.end method

.method public static IsSupportSourceIdMatchedSNContact(Ljava/lang/String;)Z
    .locals 3
    .parameter "accountType"

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v1

    const/high16 v2, 0x4080

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    const-string v1, "com.htc.htctwitter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/providers/contacts/HtcUtils/Utils;->removeSimFromSpeedDial(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static getRandomSourceId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 56
    .local v0, r:Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    .line 57
    .local v1, sourceId:J
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static is360Enabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 131
    sget-boolean v1, Lcom/android/providers/contacts/HtcUtils/Utils;->mForceEnable360:Z

    if-ne v0, v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVF360Flag:Z

    if-eq v1, v0, :cond_0

    .line 136
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is360PcscSyncEnabled()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnabledGingerBreadSearchFunction()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public static isGeneralFacebookContact(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGeneralSocialNetworkContact(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.htctwitter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportPeopleYouKnowAutoLink(Ljava/lang/String;)Z
    .locals 3
    .parameter "accountType"

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v1

    const/high16 v2, 0x4080

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    const-string v1, "com.facebook.auth.login"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.htctwitter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static removeSimFromSpeedDial(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "resolver"

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/contacts/HtcUtils/Utils$1;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/HtcUtils/Utils$1;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method
