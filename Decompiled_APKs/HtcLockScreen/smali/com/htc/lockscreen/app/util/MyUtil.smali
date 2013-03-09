.class public Lcom/htc/lockscreen/app/util/MyUtil;
.super Ljava/lang/Object;
.source "MyUtil.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "MyUtility"

.field private static sCredStoreUnlockAttempted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/lockscreen/app/util/MyUtil;->sCredStoreUnlockAttempted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFaceLockView(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "parent"

    .prologue
    .line 278
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/16 v3, 0x1f4

    const/16 v4, 0x258

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 281
    .local v2, param:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 282
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 283
    .local v1, faceView:Landroid/view/View;
    const v3, 0x102029e

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 284
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 287
    return-void
.end method

.method public static checkPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, exist:Z
    if-eqz p1, :cond_0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 49
    .local v2, info:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 50
    const/4 v1, 0x1

    .line 56
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MyUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clearFrontEndSpace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "cs"

    .prologue
    const/16 v5, 0x20

    .line 237
    if-eqz p0, :cond_2

    .line 238
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 239
    .local v0, csLength:I
    if-lez v0, :cond_2

    .line 240
    const/4 v3, -0x1

    .line 241
    .local v3, startIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 242
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v5, v4, :cond_3

    .line 243
    move v3, v2

    .line 248
    :cond_0
    if-ltz v3, :cond_2

    .line 249
    add-int/lit8 v1, v0, -0x1

    .line 251
    .local v1, endIndex:I
    move v2, v1

    :goto_1
    if-lez v2, :cond_1

    .line 252
    move v1, v2

    .line 253
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v5, v4, :cond_4

    .line 254
    add-int/lit8 v1, v1, 0x1

    .line 259
    :cond_1
    if-ge v3, v1, :cond_2

    .line 260
    invoke-interface {p0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 265
    .end local v0           #csLength:I
    .end local v1           #endIndex:I
    .end local v2           #i:I
    .end local v3           #startIndex:I
    .end local p0
    :cond_2
    return-object p0

    .line 241
    .restart local v0       #csLength:I
    .restart local v2       #i:I
    .restart local v3       #startIndex:I
    .restart local p0
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .restart local v1       #endIndex:I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "pkg"
    .parameter "iconId"

    .prologue
    .line 59
    if-gtz p2, :cond_1

    .line 60
    const/4 v0, 0x0

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 64
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/lockscreen/app/util/MyUtil;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 65
    .local v2, pkgContext:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 69
    .end local v2           #pkgContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MyUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIconFromPackage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hasMessage(Landroid/os/Handler;I)Z
    .locals 1
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static isBatteryAdjust()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public static isCameraKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 270
    const/16 v0, 0x1b

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe4

    if-ne p0, v0, :cond_1

    .line 272
    :cond_0
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChina()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 95
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_0

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSBM()Z
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, bRet:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd1

    if-ne v1, v2, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :cond_0
    return v0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 78
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v0, 0x0

    .line 79
    .local v0, bScreenOn:Z
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 82
    :cond_0
    return v0
.end method

.method public static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 33
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 34
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 35
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MyUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    move-object v0, p0

    .line 37
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 39
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method

.method public static removeMessage(Landroid/os/Handler;I)V
    .locals 0
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static sendMessage(Landroid/os/Handler;I)V
    .locals 2
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 106
    return-void
.end method

.method public static sendMessage(Landroid/os/Handler;IJ)V
    .locals 2
    .parameter "handler"
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 112
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static sendMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 2
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 121
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V

    .line 122
    return-void
.end method

.method public static sendMessage(Landroid/os/Handler;Landroid/os/Message;J)V
    .locals 2
    .parameter "handler"
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 132
    if-nez p0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static startAnimationDrawable(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "oneShot"

    .prologue
    .line 151
    if-nez p0, :cond_1

    .line 152
    const-string v2, "MyUtility"

    const-string v3, " startAnimationDrawable view is null"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 156
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 157
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 158
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 159
    .local v0, aDrawable:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p1, :cond_2

    .line 160
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 162
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method public static stopAnimationDrawable(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 168
    if-nez p0, :cond_1

    .line 169
    const-string v2, "MyUtility"

    const-string v3, " startAnimationDrawable view is null"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 173
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 174
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 175
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 176
    .local v0, aDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method public static unlockKeyStore(Ljava/lang/String;)V
    .locals 7
    .parameter "pass"

    .prologue
    .line 292
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 294
    .local v2, keystore:Landroid/security/KeyStore;
    :try_start_0
    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    .line 295
    .local v3, state:Landroid/security/KeyStore$State;
    const-string v4, "MyUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unlockKeyStore state 1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2, p0}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 297
    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    .line 298
    const-string v4, "MyUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unlockKeyStore state 2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v4, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v3, v4, :cond_0

    .line 300
    invoke-virtual {v2, p0}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 302
    :cond_0
    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    .line 303
    const-string v4, "MyUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unlockKeyStore state 3:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v3           #state:Landroid/security/KeyStore$State;
    :goto_0
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v4, :cond_2

    .line 310
    const-string v4, "MyUtility"

    const-string v5, "keyStoreUnlock try to use 3LM"

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-boolean v4, Lcom/htc/lockscreen/app/util/MyUtil;->sCredStoreUnlockAttempted:Z

    if-nez v4, :cond_1

    .line 320
    const-string v4, "DeviceManager3LM"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    .line 323
    .local v0, dmService:Landroid/os/IDeviceManager3LM;
    if-eqz v0, :cond_1

    .line 325
    const/4 v4, 0x1

    :try_start_1
    sput-boolean v4, Lcom/htc/lockscreen/app/util/MyUtil;->sCredStoreUnlockAttempted:Z

    .line 326
    invoke-interface {v0, p0}, Landroid/os/IDeviceManager3LM;->keyStoreUnlock(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    .end local v0           #dmService:Landroid/os/IDeviceManager3LM;
    :cond_1
    :goto_1
    return-void

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "MyUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyStoreUnlock e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 327
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #dmService:Landroid/os/IDeviceManager3LM;
    :catch_1
    move-exception v1

    .line 328
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "MyUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyStoreUnlock by 3LM e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 334
    .end local v0           #dmService:Landroid/os/IDeviceManager3LM;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v4, "MyUtility"

    const-string v5, "keyStoreUnlock not support 3LM"

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static updateHint(Landroid/widget/TextView;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z
    .locals 11
    .parameter "hint"
    .parameter "util"
    .parameter "monitor"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 198
    if-nez p0, :cond_0

    move v1, v7

    .line 233
    :goto_0
    return v1

    .line 201
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 203
    .local v1, deleteData:Z
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe()I

    move-result v4

    .line 204
    .local v4, totalCount:I
    if-lez v4, :cond_3

    .line 205
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    .line 206
    .local v6, tryCountAfterBoot:I
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts()I

    move-result v5

    .line 208
    .local v5, tryCount:I
    rem-int v8, v5, v4

    sub-int v3, v4, v8

    .line 209
    .local v3, remainCount:I
    const/4 v2, 0x0

    .line 210
    .local v2, message:Ljava/lang/String;
    if-ne v3, v4, :cond_1

    if-lez v5, :cond_1

    if-lez v6, :cond_1

    .line 213
    const v7, 0x20c00d6

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    const/4 v1, 0x1

    .line 228
    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :cond_1
    if-le v3, v9, :cond_2

    .line 219
    const v8, 0x20c00d1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 223
    :cond_2
    const v8, 0x20c00d2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 231
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #remainCount:I
    .end local v5           #tryCount:I
    .end local v6           #tryCountAfterBoot:I
    :cond_3
    const-string v7, ""

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
