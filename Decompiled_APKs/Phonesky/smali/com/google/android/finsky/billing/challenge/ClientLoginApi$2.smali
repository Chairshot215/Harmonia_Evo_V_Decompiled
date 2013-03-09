.class Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;
.super Ljava/lang/Object;
.source "ClientLoginApi.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->validateUser(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

.field final synthetic val$gaiaPasswd:Ljava/lang/String;

.field final synthetic val$listener:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/challenge/ClientLoginApi;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;->this$0:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

    iput-object p2, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;->val$listener:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;

    iput-object p3, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;->val$gaiaPasswd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 6
    .parameter "error"

    .prologue
    .line 76
    sget-object v2, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    .line 78
    .local v2, err:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v4, v4, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 80
    .local v0, data:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    sget-object v2, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->TWO_FACTOR:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0           #data:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;->val$listener:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;

    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;->val$gaiaPasswd:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;->onAuthFailure(Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;)V

    .line 92
    return-void

    .line 83
    .restart local v0       #data:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    sget-object v2, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->CAPTCHA:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    goto :goto_0

    .line 86
    :cond_1
    sget-object v2, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 88
    .end local v0           #data:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 89
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "Unsupported encoding %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
