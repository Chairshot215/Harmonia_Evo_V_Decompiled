.class public Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;
.super Landroid/app/IntentService;
.source "PushMessagingRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;,
        Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;,
        Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
    }
.end annotation


# static fields
.field private static ERROR_PREFIX:Ljava/lang/String;


# instance fields
.field private mAndroidId:J

.field mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mSecurityToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    const-string v0, "Error="

    sput-object v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->ERROR_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 196
    const-string v0, "PushMessagingRegistrar"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mSecurityToken:Ljava/lang/String;

    .line 197
    return-void
.end method

.method private clearSecurityToken()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mSecurityToken:Ljava/lang/String;

    .line 261
    return-void
.end method

.method private getReceivePermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "appPackage"

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.C2D_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSecurityToken()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 244
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mSecurityToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mSecurityToken:Ljava/lang/String;

    .line 256
    :goto_0
    return-object v3

    .line 248
    :cond_0
    :try_start_0
    const-string v3, "CheckinService"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "CheckinTask_securityToken"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 250
    .local v1, securityToken:J
    cmp-long v3, v1, v7

    if-eqz v3, :cond_1

    .line 251
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mSecurityToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v1           #securityToken:J
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mSecurityToken:Ljava/lang/String;

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "CheckinTask_securityToken is not a long."

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "c2dm_aid_url"

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 238
    const-string v0, "https://android.clients.google.com/c2dm/register3"

    .line 240
    :cond_0
    return-object v0
.end method

.method private getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "AndroidC2DM/1.0"

    return-object v0
.end method

.method private handleError(Ljava/lang/String;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 7
    .parameter "body"
    .parameter "response"
    .parameter "appPackage"

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->parseServerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, error:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->parseRetryAfterSec(Lorg/apache/http/HttpResponse;)J

    move-result-wide v5

    .line 533
    .local v5, retryAfterS:J
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-lez v0, :cond_0

    .line 534
    const-string v2, "error"

    const-string v4, "Retry-After"

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendRegistrationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-direct {p0, p3, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)Z
    .locals 5
    .parameter "request"

    .prologue
    .line 269
    :try_start_0
    const-string v2, "C2DMRegistrar"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 271
    :cond_0
    instance-of v2, p1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;

    if-eqz v2, :cond_1

    .line 272
    move-object v0, p1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->register(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;)V

    .line 286
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 274
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->unregister(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, ex:Lorg/apache/http/auth/AuthenticationException;
    const-string v2, "C2DMRegistrar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C2DMReg] handleRequest caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->clearSecurityToken()V

    .line 279
    iget-object v2, p1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mAppPackage:Ljava/lang/String;

    const-string v3, "AUTHENTICATION_FAILED"

    invoke-direct {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v2, 0x0

    goto :goto_1

    .line 281
    .end local v1           #ex:Lorg/apache/http/auth/AuthenticationException;
    :catch_1
    move-exception v1

    .line 282
    .local v1, ex:Ljava/io/IOException;
    const-string v2, "C2DMRegistrar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C2DMReg] handleRequest caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v2, p1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mAppPackage:Ljava/lang/String;

    const-string v3, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAuthenticationError(I)Z
    .locals 1
    .parameter "statusCode"

    .prologue
    .line 567
    const/16 v0, 0x193

    if-eq p1, v0, :cond_0

    const/16 v0, 0x191

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 627
    const-string v0, "C2DMRegistrar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C2DMRegistrar."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void
.end method

.method private parseRetryAfterSec(Lorg/apache/http/HttpResponse;)J
    .locals 5
    .parameter "response"

    .prologue
    .line 550
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 552
    .local v0, retryAfterHeader:Lorg/apache/http/Header;
    :goto_0
    if-eqz v0, :cond_1

    .line 555
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, retryAfterVal:Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    .line 557
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 563
    .end local v1           #retryAfterVal:Ljava/lang/String;
    :goto_1
    return-wide v3

    .line 550
    .end local v0           #retryAfterHeader:Lorg/apache/http/Header;
    :cond_0
    const-string v3, "Retry-After"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_0

    .line 559
    .restart local v0       #retryAfterHeader:Lorg/apache/http/Header;
    :catch_0
    move-exception v2

    .line 560
    .local v2, t:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing retryAfter - use default sleep "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 563
    .end local v2           #t:Ljava/lang/NumberFormatException;
    :cond_1
    const-wide/16 v3, 0x0

    goto :goto_1
.end method

.method private parseServerError(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "body"

    .prologue
    .line 577
    if-eqz p1, :cond_1

    sget-object v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->ERROR_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    sget-object v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->ERROR_PREFIX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, error:Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 590
    :cond_0
    :goto_0
    return-object v0

    .line 587
    .end local v0           #error:Ljava/lang/String;
    :cond_1
    const-string v0, "SERVICE_NOT_AVAILABLE"

    .restart local v0       #error:Ljava/lang/String;
    goto :goto_0
.end method

.method private registrationRemoved(Ljava/lang/String;)V
    .locals 7
    .parameter "appPackage"

    .prologue
    .line 600
    const-string v2, "unregistered"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendRegistrationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 603
    return-void
.end method

.method private registrationSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "appPackage"
    .parameter "registrationId"

    .prologue
    .line 594
    const-string v2, "registration_id"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendRegistrationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 597
    return-void
.end method

.method private requestFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "appPackage"
    .parameter "error"

    .prologue
    .line 606
    const-string v2, "error"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendRegistrationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 608
    return-void
.end method

.method private sendRegistrationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "app"
    .parameter "key"
    .parameter "value"
    .parameter "key2"
    .parameter "value2"

    .prologue
    .line 612
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getReceivePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, permission:Ljava/lang/String;
    const-string v2, "C2DMRegistrar"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send registration intent app= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " perm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 619
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    if-eqz p4, :cond_1

    .line 621
    invoke-virtual {v0, p4, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 623
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 624
    return-void
.end method


# virtual methods
.method public getAndroidId()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAndroidId:J

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 652
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 643
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 644
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAndroidId:J

    .line 646
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 647
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v1, "C2DMRegistrar"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 648
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 632
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 634
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$1;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 639
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 657
    if-eqz p1, :cond_0

    .line 658
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 660
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->register(Landroid/content/Intent;)V

    .line 665
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 661
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->unregister(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public register(Landroid/content/Intent;)V
    .locals 16
    .parameter "intent"

    .prologue
    .line 294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 297
    .local v11, origId:J
    :try_start_0
    const-string v2, "app"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    .line 298
    .local v13, parcelable:Landroid/os/Parcelable;
    if-eqz v13, :cond_0

    instance-of v2, v13, Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    .line 302
    :cond_0
    const-string v2, "C2DMRegistrar"

    const-string v15, "Invalid parameter app"

    invoke-static {v2, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    :goto_0
    return-void

    .line 305
    :cond_1
    :try_start_1
    move-object v0, v13

    check-cast v0, Landroid/app/PendingIntent;

    move-object v7, v0

    .line 306
    .local v7, appPI:Landroid/app/PendingIntent;
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, appPackage:Ljava/lang/String;
    const-string v2, "sender"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, developerId:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    const-string v2, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v2, "C2DMRegistrar"

    const-string v15, "Invalid parameter sender"

    invoke-static {v2, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 314
    :cond_2
    :try_start_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 315
    .local v6, extra:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 316
    .local v8, extras:Landroid/os/Bundle;
    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 317
    .local v10, key:Ljava/lang/String;
    const-string v2, "app"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "sender"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 321
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 322
    .local v14, value:Ljava/lang/String;
    invoke-interface {v6, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 337
    .end local v4           #appPackage:Ljava/lang/String;
    .end local v5           #developerId:Ljava/lang/String;
    .end local v6           #extra:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #appPI:Landroid/app/PendingIntent;
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #key:Ljava/lang/String;
    .end local v13           #parcelable:Landroid/os/Parcelable;
    .end local v14           #value:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 326
    .restart local v4       #appPackage:Ljava/lang/String;
    .restart local v5       #developerId:Ljava/lang/String;
    .restart local v6       #extra:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #appPI:Landroid/app/PendingIntent;
    .restart local v8       #extras:Landroid/os/Bundle;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v13       #parcelable:Landroid/os/Parcelable;
    :cond_4
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 330
    const-string v2, "SERVICE_DISABLED"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_5
    new-instance v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 335
    .local v1, request:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method public register(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;)V
    .locals 23
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getAndroidId()J

    move-result-wide v3

    .line 382
    .local v3, androidId:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 383
    .local v19, url:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mAppPackage:Ljava/lang/String;

    .line 384
    .local v5, appPackage:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mDeveloperId:Ljava/lang/String;

    .line 385
    .local v7, developerId:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mExtraParams:Ljava/util/Map;

    check-cast v10, Ljava/util/HashMap;

    .line 387
    .local v10, extraParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v20, "C2DMRegistrar"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 388
    const-string v20, "register:"

    invoke-static/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 389
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  url="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 391
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  device="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 392
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  app="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 393
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  sender="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 396
    :cond_0
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 397
    const-string v20, "C2DMRegistrar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "register: invalid url "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v20, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_0
    return-void

    .line 402
    :cond_1
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 403
    .local v13, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getSecurityToken()Ljava/lang/String;

    move-result-object v16

    .line 404
    .local v16, securityToken:Ljava/lang/String;
    if-nez v16, :cond_2

    .line 405
    const-string v20, "AUTHENTICATION_FAILED"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_2
    const-string v20, "Authorization"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AidLogin "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v12, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v20, Lorg/apache/http/message/BasicNameValuePair;

    const-string v21, "app"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v20, Lorg/apache/http/message/BasicNameValuePair;

    const-string v21, "sender"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v20, Lorg/apache/http/message/BasicNameValuePair;

    const-string v21, "device"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    if-eqz v10, :cond_3

    .line 417
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 418
    .local v9, extraParam:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 424
    .end local v9           #extraParam:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_0
    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v14, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .local v14, reqEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 433
    .local v15, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 435
    .local v17, statusCode:I
    const/16 v20, 0xc8

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 436
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "register: http error "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->isAuthenticationError(I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 439
    new-instance v20, Lorg/apache/http/auth/AuthenticationException;

    invoke-direct/range {v20 .. v20}, Lorg/apache/http/auth/AuthenticationException;-><init>()V

    throw v20

    .line 425
    .end local v14           #reqEntity:Lorg/apache/http/HttpEntity;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #statusCode:I
    :catch_0
    move-exception v8

    .line 426
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    const-string v20, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v14       #reqEntity:Lorg/apache/http/HttpEntity;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #statusCode:I
    :cond_4
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-static/range {v20 .. v21}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 446
    .local v6, body:Ljava/lang/String;
    const-string v20, "token="

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 447
    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 448
    const/16 v20, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 451
    :cond_5
    const-string v20, "="

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v18, v20, v21

    .line 452
    .local v18, token:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->registrationSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    .end local v18           #token:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15, v5}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleError(Ljava/lang/String;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public unregister(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 348
    .local v1, origId:J
    const-string v7, "app"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 349
    .local v3, parcelable:Landroid/os/Parcelable;
    if-eqz v3, :cond_0

    instance-of v7, v3, Landroid/app/PendingIntent;

    if-nez v7, :cond_1

    .line 353
    :cond_0
    const-string v7, "C2DMRegistrar"

    const-string v8, "Invalid parameter app"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_0
    return-void

    :cond_1
    move-object v4, v3

    .line 356
    check-cast v4, Landroid/app/PendingIntent;

    .line 358
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, appPackage:Ljava/lang/String;
    const-string v7, "com.google.android.gsf"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 362
    const-string v7, "app_gsf"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, url:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 368
    const-string v7, "SERVICE_DISABLED"

    invoke-direct {p0, v0, v7}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_3
    new-instance v5, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;

    invoke-direct {v5, p0, v6, v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .local v5, request:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;
    invoke-direct {p0, v5}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0           #appPackage:Ljava/lang/String;
    .end local v5           #request:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;
    .end local v6           #url:Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public unregister(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;)V
    .locals 16
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getAndroidId()J

    move-result-wide v1

    .line 462
    .local v1, androidId:J
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->mUrl:Ljava/lang/String;

    .line 463
    .local v12, url:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;->mAppPackage:Ljava/lang/String;

    .line 465
    .local v3, appPackage:Ljava/lang/String;
    const-string v13, "C2DMRegistrar"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 466
    const-string v13, "unregister:"

    invoke-static {v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 467
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  url="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 470
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  app="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 473
    :cond_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 474
    const-string v13, "C2DMRegistrar"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unregister: invalid url "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v13, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :goto_0
    return-void

    .line 479
    :cond_1
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 480
    .local v7, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getSecurityToken()Ljava/lang/String;

    move-result-object v10

    .line 481
    .local v10, securityToken:Ljava/lang/String;
    if-nez v10, :cond_2

    .line 482
    const-string v13, "AUTHENTICATION_FAILED"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_2
    const-string v13, "Authorization"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AidLogin "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v6, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "app"

    invoke-direct {v13, v14, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "device"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "delete"

    const-string v15, "true"

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :try_start_0
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v8, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .local v8, reqEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v13, v7}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 503
    .local v9, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 505
    .local v11, statusCode:I
    const/16 v13, 0xc8

    if-eq v11, v13, :cond_3

    .line 506
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unregister: http error "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->isAuthenticationError(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 509
    new-instance v13, Lorg/apache/http/auth/AuthenticationException;

    invoke-direct {v13}, Lorg/apache/http/auth/AuthenticationException;-><init>()V

    throw v13

    .line 496
    .end local v8           #reqEntity:Lorg/apache/http/HttpEntity;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v11           #statusCode:I
    :catch_0
    move-exception v5

    .line 497
    .local v5, e:Ljava/io/UnsupportedEncodingException;
    const-string v13, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 513
    .end local v5           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v8       #reqEntity:Lorg/apache/http/HttpEntity;
    .restart local v9       #response:Lorg/apache/http/HttpResponse;
    .restart local v11       #statusCode:I
    :cond_3
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, body:Ljava/lang/String;
    const-string v13, "C2DMRegistrar"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 515
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "body= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 517
    :cond_4
    const-string v13, "deleted="

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 519
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->registrationRemoved(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 521
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleError(Ljava/lang/String;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
