.class public Lcom/android/calculator2/hide/SecretCodeHandler;
.super Ljava/lang/Object;
.source "SecretCodeHandler.java"


# static fields
.field private static final COMMON_SECRET_CODE_PREFIX:Ljava/lang/String; = "!+!+"

.field private static final COMMON_SECRET_CODE_SUFFIX:Ljava/lang/String; = "+!+!"

.field private static final COMMON_SECRET_CODE_URI_SCHEME:Ljava/lang/String; = "android_secret_code://"

.field private static final SECRET_CODE_OTASP:Ljava/lang/String; = "228"

.field private static final SECRET_CODE_PREFIX:Ljava/lang/String; = "!!"

.field private static final SECRET_CODE_SUFFIX:Ljava/lang/String; = "!"

.field private static final SECRET_CODE_TTY:Ljava/lang/String; = "889"

.field private static final SECRET_CODE_URI_SCHEME:Ljava/lang/String; = "android_secret_code://cdma"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/android/calculator2/hide/SecretCodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/hide/SecretCodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCommonSecretCode(Ljava/lang/String;)Z
    .locals 8
    .parameter "input"

    .prologue
    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, result:Z
    sget-object v6, Lcom/android/calculator2/hide/SecretCodeHandler;->TAG:Ljava/lang/String;

    invoke-static {v6, p0}, Lcom/android/calculator2/hide/HideUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 49
    .local v1, length:I
    const-string v6, "!+!+"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 50
    .local v2, prefixLength:I
    const-string v6, "+!+!"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 51
    .local v4, suffixLength:I
    add-int v6, v2, v4

    if-le v1, v6, :cond_0

    const-string v6, "!+!+"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "+!+!"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    sub-int v6, v1, v4

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, text:Ljava/lang/String;
    sget-object v6, Lcom/android/calculator2/hide/SecretCodeHandler;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/calculator2/hide/HideUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    const/4 v3, 0x1

    .line 63
    .end local v5           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 59
    .restart local v5       #text:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/calculator2/hide/SecretCodeHandler;->TAG:Ljava/lang/String;

    const-string v7, "Input is not integer."

    invoke-static {v6, v7}, Lcom/android/calculator2/hide/HideUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSecretCode(Ljava/lang/String;)Z
    .locals 8
    .parameter "input"

    .prologue
    .line 25
    const/4 v3, 0x0

    .line 26
    .local v3, result:Z
    sget-object v6, Lcom/android/calculator2/hide/SecretCodeHandler;->TAG:Ljava/lang/String;

    invoke-static {v6, p0}, Lcom/android/calculator2/hide/HideUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 28
    .local v1, length:I
    const-string v6, "!!"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 29
    .local v2, prefixLength:I
    const-string v6, "!"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 30
    .local v4, suffixLength:I
    add-int v6, v2, v4

    if-le v1, v6, :cond_0

    const-string v6, "!!"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "!"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 33
    sub-int v6, v1, v4

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, text:Ljava/lang/String;
    sget-object v6, Lcom/android/calculator2/hide/SecretCodeHandler;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/calculator2/hide/HideUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 v3, 0x1

    .line 42
    .end local v5           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 38
    .restart local v5       #text:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/calculator2/hide/SecretCodeHandler;->TAG:Ljava/lang/String;

    const-string v7, "Input is not integer."

    invoke-static {v6, v7}, Lcom/android/calculator2/hide/HideUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static triggerCommonSecretCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "input"

    .prologue
    .line 105
    if-eqz p0, :cond_0

    .line 106
    const-string v4, "!+!+"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 107
    .local v1, prefixLength:I
    const-string v4, "+!+!"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 108
    .local v2, suffixLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, text:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android_secret_code://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #prefixLength:I
    .end local v2           #suffixLength:I
    .end local v3           #text:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static triggerSecretCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 67
    if-eqz p0, :cond_0

    .line 68
    const-string v8, "!!"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    .line 69
    .local v3, prefixLength:I
    const-string v8, "!"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    .line 70
    .local v5, suffixLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, text:Ljava/lang/String;
    const-string v8, "889"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 72
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v8, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 73
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v4, quickStartIntent:Landroid/content/Intent;
    const-string v8, "com.android.phone"

    const-string v9, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v8, "shortcut"

    const-string v9, "TTY"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const/high16 v8, 0x1000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v3           #prefixLength:I
    .end local v4           #quickStartIntent:Landroid/content/Intent;
    .end local v5           #suffixLength:I
    .end local v6           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v3       #prefixLength:I
    .restart local v4       #quickStartIntent:Landroid/content/Intent;
    .restart local v5       #suffixLength:I
    .restart local v6       #text:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/calculator2/hide/SecretCodeHandler;->TAG:Ljava/lang/String;

    const-string v9, "Activity not found."

    invoke-static {v8, v9}, Lcom/android/calculator2/hide/HideUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #quickStartIntent:Landroid/content/Intent;
    :cond_1
    const-string v8, "228"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v11, :cond_2

    .line 85
    const-string v8, "tel"

    const-string v9, "*228"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 86
    .local v7, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    .local v0, dialIntent:Landroid/content/Intent;
    const-string v8, "number"

    const-string v9, "*228"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    :try_start_1
    invoke-static {v0}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 91
    :catch_1
    move-exception v1

    .line 92
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/calculator2/hide/SecretCodeHandler;->TAG:Ljava/lang/String;

    const-string v9, "DialUtils Fail!"

    invoke-static {v8, v9}, Lcom/android/calculator2/hide/HideUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v0           #dialIntent:Landroid/content/Intent;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_2
    sget-object v8, Lcom/android/calculator2/hide/SecretCodeHandler;->TAG:Ljava/lang/String;

    const-string v9, "Airplane mode!"

    invoke-static {v8, v9}, Lcom/android/calculator2/hide/HideUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.provider.Telephony.SECRET_CODE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android_secret_code://cdma"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 99
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
