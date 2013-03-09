.class public Lcom/android/phone/util/VTHelper;
.super Ljava/lang/Object;
.source "VTHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/util/VTHelper$CallbackResult;
    }
.end annotation


# static fields
.field private static final RES_STILL_IMG_ID:I = 0x20800c1

.field private static final TAG:Ljava/lang/String; = "VTHelper"


# instance fields
.field mMyPhoto:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method public static final getCallbackForDisconnect(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;I)Lcom/android/phone/util/VTHelper$CallbackResult;
    .locals 6
    .parameter "packageContext"
    .parameter
    .parameter "number"
    .parameter "rawCause"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/phone/util/VTHelper$CallbackResult;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/android/phone/util/VTPrefHelper;->getCallbackMode(Landroid/content/Context;)I

    move-result v1

    .line 145
    .local v1, callbackMode:I
    new-instance v0, Lcom/android/phone/util/VTHelper$CallbackResult;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/util/VTHelper$CallbackResult;-><init>(ILandroid/content/Context;Ljava/lang/Class;Ljava/lang/String;I)V

    .line 151
    .local v0, result:Lcom/android/phone/util/VTHelper$CallbackResult;
    return-object v0
.end method

.method public static getVTCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;
    .locals 4
    .parameter "cm"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 282
    .local v2, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 283
    .local v1, fg:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 285
    .local v0, bg:Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoTelephony()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    .end local v2           #ringing:Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v2

    .line 292
    .restart local v2       #ringing:Lcom/android/internal/telephony/Call;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoTelephony()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v1

    .line 296
    goto :goto_0

    .line 299
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoTelephony()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v2, v0

    .line 303
    goto :goto_0

    .line 307
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasConnectedVTCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .parameter "cm"

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 201
    .local v1, connected:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 202
    .local v3, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 203
    .local v2, fg:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 205
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-static {v3, v2, v0}, Lcom/android/phone/util/VTHelper;->hasVTCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 206
    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isVideoTelephony()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    const/4 v1, 0x0

    .line 215
    :cond_0
    return v1
.end method

.method private static hasVTCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .parameter "ringing"
    .parameter "fg"
    .parameter "bg"

    .prologue
    const/4 v1, 0x1

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isVideoTelephony()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    const-string v2, "VTHelper"

    const-string v3, "hasVTCall ringingCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    return v1

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 255
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVTCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    const-string v2, "VTHelper"

    const-string v3, "hasVTCall fgCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->isVideoTelephony()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    const-string v2, "VTHelper"

    const-string v3, "hasVTCall bgCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_2
    const-string v1, "VTHelper"

    const-string v2, "has no VTCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasVTCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 4
    .parameter "cm"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 227
    .local v2, ringing:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 228
    .local v1, fg:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 230
    .local v0, bg:Lcom/android/internal/telephony/Call;
    invoke-static {v2, v1, v0}, Lcom/android/phone/util/VTHelper;->hasVTCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    move-result v3

    return v3
.end method

.method private loadMyPhoto(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "resolver"

    .prologue
    const-wide/16 v5, 0x0

    .line 110
    const/4 v3, 0x0

    .line 112
    .local v3, result:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, myBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 114
    const-string v4, "_id"

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 115
    .local v1, myId:J
    cmp-long v4, v5, v1

    if-eqz v4, :cond_0

    .line 116
    const/4 v4, 0x0

    invoke-static {v1, v2, v4, p1}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 123
    .end local v1           #myId:J
    :cond_0
    return-object v3
.end method

.method public static requestFallBack(Lcom/android/internal/telephony/Call;)Z
    .locals 4
    .parameter "call"

    .prologue
    .line 312
    if-eqz p0, :cond_0

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->requestFallBack()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    const/4 v1, 0x1

    .line 319
    :goto_0
    return v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "VTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call hangup: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v0           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestFallBack(Lcom/android/internal/telephony/Connection;)Z
    .locals 4
    .parameter "c"

    .prologue
    .line 324
    if-eqz p0, :cond_0

    .line 325
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->requestFallBack()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    const/4 v1, 0x1

    .line 331
    :goto_0
    return v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "VTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection hangup: caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .end local v0           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/phone/util/VTHelper;->mMyPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/util/VTHelper;->mMyPhoto:Landroid/graphics/Bitmap;

    .line 135
    :cond_0
    return-void
.end method

.method public getMyPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"

    .prologue
    .line 63
    iget-object v2, p0, Lcom/android/phone/util/VTHelper;->mMyPhoto:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 69
    const-string v2, "vt_pref_key_still_image"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 72
    .local v1, useMyPhoto:Z
    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/util/VTHelper;->loadMyPhoto(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/util/VTHelper;->mMyPhoto:Landroid/graphics/Bitmap;

    .line 77
    .end local v1           #useMyPhoto:Z
    :cond_0
    iget-object v2, p0, Lcom/android/phone/util/VTHelper;->mMyPhoto:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20800c1

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/util/VTHelper;->mMyPhoto:Landroid/graphics/Bitmap;

    .line 86
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/util/VTHelper;->mMyPhoto:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public getMyVideoDisplayMode(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, mode:I
    if-eqz p1, :cond_0

    .line 94
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 97
    .local v2, pref:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 98
    const-string v3, "vt_pref_key_layout_type"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, modeValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/util/VTPrefHelper;->getLayoutType(Ljava/lang/String;)I

    move-result v0

    .line 106
    .end local v1           #modeValue:Ljava/lang/String;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return v0
.end method
