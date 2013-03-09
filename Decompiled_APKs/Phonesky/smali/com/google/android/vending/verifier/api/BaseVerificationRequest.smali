.class public abstract Lcom/google/android/vending/verifier/api/BaseVerificationRequest;
.super Lcom/android/volley/Request;
.source "BaseVerificationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Lcom/google/protobuf/micro/MessageMicro;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mRequest:Lcom/google/protobuf/micro/MessageMicro;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;Lcom/google/protobuf/micro/MessageMicro;)V
    .locals 0
    .parameter "url"
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$ErrorListener;",
            "TU;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/google/android/vending/verifier/api/BaseVerificationRequest;,"Lcom/google/android/vending/verifier/api/BaseVerificationRequest<TT;TU;>;"
    .local p3, request:Lcom/google/protobuf/micro/MessageMicro;,"TU;"
    invoke-direct {p0, p1, p2}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 29
    iput-object p3, p0, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->mRequest:Lcom/google/protobuf/micro/MessageMicro;

    .line 30
    return-void
.end method

.method private makeUserAgentString()Ljava/lang/String;
    .locals 11

    .prologue
    .local p0, this:Lcom/google/android/vending/verifier/api/BaseVerificationRequest;,"Lcom/google/android/vending/verifier/api/BaseVerificationRequest<TT;TU;>;"
    const/4 v10, 0x0

    .line 50
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 51
    .local v0, context:Landroid/content/Context;
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, device:Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, hardware:Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, product:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 61
    .local v4, pi:Landroid/content/pm/PackageInfo;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Android-Finsky/%s (versionCode=%d,sdk=%d,device=%s,hardware=%s,product=%s)"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v9, v8, v10

    const/4 v9, 0x1

    iget v10, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v1, v8, v9

    const/4 v9, 0x4

    aput-object v3, v8, v9

    const/4 v9, 0x5

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 57
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 59
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 67
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, this:Lcom/google/android/vending/verifier/api/BaseVerificationRequest;,"Lcom/google/android/vending/verifier/api/BaseVerificationRequest<TT;TU;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v0, headerMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "User-Agent"

    invoke-direct {p0}, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->makeUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-object v0
.end method

.method public getPostBody()[B
    .locals 1

    .prologue
    .line 46
    .local p0, this:Lcom/google/android/vending/verifier/api/BaseVerificationRequest;,"Lcom/google/android/vending/verifier/api/BaseVerificationRequest<TT;TU;>;"
    iget-object v0, p0, Lcom/google/android/vending/verifier/api/BaseVerificationRequest;->mRequest:Lcom/google/protobuf/micro/MessageMicro;

    invoke-virtual {v0}, Lcom/google/protobuf/micro/MessageMicro;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    .local p0, this:Lcom/google/android/vending/verifier/api/BaseVerificationRequest;,"Lcom/google/android/vending/verifier/api/BaseVerificationRequest<TT;TU;>;"
    const-string v0, "application/x-protobuffer"

    return-object v0
.end method
