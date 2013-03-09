.class public Ltwitter4j/TwitterException;
.super Ljava/lang/Exception;
.source "TwitterException.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ltwitter4j/internal/http/HttpResponseCode;


# static fields
.field private static final FILTER:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x2467dddfd16c8207L


# instance fields
.field private exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

.field private featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

.field nested:Z

.field private rateLimitStatus:Ltwitter4j/RateLimitStatus;

.field private responseHeaderFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private retryAfter:I

.field private statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "twitter4j"

    aput-object v2, v0, v1

    sput-object v0, Ltwitter4j/TwitterException;->FILTER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 2
    .parameter "cause"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/TwitterException;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 37
    iput-object v1, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 39
    iput-object v1, p0, Ltwitter4j/TwitterException;->responseHeaderFields:Ljava/util/Map;

    .line 40
    iput-object v1, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    .line 49
    instance-of v0, p1, Ltwitter4j/TwitterException;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Ltwitter4j/TwitterException;

    .end local p1
    invoke-virtual {p1}, Ltwitter4j/TwitterException;->setNested()V

    .line 52
    :cond_0
    iput-object v1, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-static {p1}, Ltwitter4j/TwitterException;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 37
    iput-object v1, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 39
    iput-object v1, p0, Ltwitter4j/TwitterException;->responseHeaderFields:Ljava/util/Map;

    .line 40
    iput-object v1, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    .line 44
    iput-object v1, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;ILtwitter4j/RateLimitStatus;Ltwitter4j/RateLimitStatus;)V
    .locals 2
    .parameter "message"
    .parameter "retryAfter"
    .parameter
    .parameter "statusCode"
    .parameter "rateLimitStatus"
    .parameter "featureSpecificLateLimitStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ltwitter4j/RateLimitStatus;",
            "Ltwitter4j/RateLimitStatus;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, responseHeaderFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 89
    invoke-static {p1}, Ltwitter4j/TwitterException;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 37
    iput-object v1, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 39
    iput-object v1, p0, Ltwitter4j/TwitterException;->responseHeaderFields:Ljava/util/Map;

    .line 40
    iput-object v1, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    .line 90
    iput p2, p0, Ltwitter4j/TwitterException;->retryAfter:I

    .line 91
    iput-object p3, p0, Ltwitter4j/TwitterException;->responseHeaderFields:Ljava/util/Map;

    .line 92
    iput p4, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 93
    iput-object p5, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 94
    iput-object p6, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "msg"
    .parameter "cause"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-static {p1}, Ltwitter4j/TwitterException;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 37
    iput-object v1, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 39
    iput-object v1, p0, Ltwitter4j/TwitterException;->responseHeaderFields:Ljava/util/Map;

    .line 40
    iput-object v1, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 2
    .parameter "msg"
    .parameter "cause"
    .parameter "statusCode"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-static {p1}, Ltwitter4j/TwitterException;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 37
    iput-object v1, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 39
    iput-object v1, p0, Ltwitter4j/TwitterException;->responseHeaderFields:Ljava/util/Map;

    .line 40
    iput-object v1, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    .line 103
    iput p3, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V
    .locals 6
    .parameter "message"
    .parameter "res"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 56
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p2}, Ltwitter4j/TwitterException;->getCause(Ltwitter4j/internal/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Ltwitter4j/TwitterException;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    iput v5, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 37
    iput-object v4, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 39
    iput-object v4, p0, Ltwitter4j/TwitterException;->responseHeaderFields:Ljava/util/Map;

    .line 40
    iput-object v4, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    .line 245
    const/4 v2, 0x0

    iput-boolean v2, p0, Ltwitter4j/TwitterException;->nested:Z

    .line 57
    invoke-virtual {p2}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1a4

    if-ne v2, v3, :cond_0

    .line 62
    :try_start_0
    const-string v2, "Retry-After"

    invoke-virtual {p2, v2}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, retryAfterStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Ltwitter4j/TwitterException;->retryAfter:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1           #retryAfterStr:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeaderFields()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TwitterException;->responseHeaderFields:Ljava/util/Map;

    .line 71
    invoke-virtual {p2}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v2

    iput v2, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 72
    invoke-static {p2}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 73
    invoke-static {p2}, Ltwitter4j/RateLimitStatusJSONImpl;->createFeatureSpecificRateLimitStatusFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 74
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, ignore:Ljava/lang/NumberFormatException;
    iput v5, p0, Ltwitter4j/TwitterException;->retryAfter:I

    goto :goto_0
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "str"

    .prologue
    .line 108
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 110
    .local v2, value:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, json:Lorg/json/JSONObject;
    const-string v3, "error"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    const-string v3, "error - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :cond_0
    const-string v3, "request"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    const-string v3, "request - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "request"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1           #json:Lorg/json/JSONObject;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static getCause(Ltwitter4j/internal/http/HttpResponse;)Ljava/lang/String;
    .locals 4
    .parameter "res"

    .prologue
    .line 288
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v1

    .line 291
    .local v1, statusCode:I
    sparse-switch v1, :sswitch_data_0

    .line 336
    const-string v0, ""

    .line 338
    .local v0, cause:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 293
    .end local v0           #cause:Ljava/lang/String;
    :sswitch_0
    const-string v0, "There was no new data to return."

    .line 294
    .restart local v0       #cause:Ljava/lang/String;
    goto :goto_0

    .line 296
    .end local v0           #cause:Ljava/lang/String;
    :sswitch_1
    const-string v0, "The request was invalid.  An accompanying error message will explain why. This is the status code will be returned during rate limiting."

    .line 297
    .restart local v0       #cause:Ljava/lang/String;
    goto :goto_0

    .line 299
    .end local v0           #cause:Ljava/lang/String;
    :sswitch_2
    const-string v0, "Authentication credentials (http://dev.twitter.com/pages/auth) were missing or incorrect. Ensure that you have set valid conumer key/secret, access token/secret, and the system clock in in sync."

    .line 300
    .restart local v0       #cause:Ljava/lang/String;
    goto :goto_0

    .line 302
    .end local v0           #cause:Ljava/lang/String;
    :sswitch_3
    const-string v0, "The request is understood, but it has been refused. An accompanying error message will explain why. This code is used when requests are being denied due to update limits (http://support.twitter.com/forums/10711/entries/15364)."

    .line 303
    .restart local v0       #cause:Ljava/lang/String;
    goto :goto_0

    .line 305
    .end local v0           #cause:Ljava/lang/String;
    :sswitch_4
    const-string v0, "The URI requested is invalid or the resource requested, such as a user, does not exist."

    .line 306
    .restart local v0       #cause:Ljava/lang/String;
    goto :goto_0

    .line 308
    .end local v0           #cause:Ljava/lang/String;
    :sswitch_5
    const-string v0, "Returned by the Search API when an invalid format is specified in the request.\nReturned by the Streaming API when one or more of the parameters are not suitable for the resource. The track parameter, for example, would throw this error if:\n The track keyword is too long or too short.\n The bounding box specified is invalid.\n No predicates defined for filtered resource, for example, neither track nor follow parameter defined.\n Follow userid cannot be read."

    .line 314
    .restart local v0       #cause:Ljava/lang/String;
    goto :goto_0

    .line 316
    .end local v0           #cause:Ljava/lang/String;
    :sswitch_6
    const-string v0, "A parameter list is too long. The track parameter, for example, would throw this error if:\n Too many track tokens specified for role; contact API team for increased access.\n Too many bounding boxes specified for role; contact API team for increased access.\n Too many follow userids specified for role; contact API team for increased access."

    .line 320
    .restart local v0       #cause:Ljava/lang/String;
    goto :goto_0

    .line 322
    .end local v0           #cause:Ljava/lang/String;
    :sswitch_7
    const-string v0, "Returned by the Search and Trends API when you are being rate limited (http://dev.twitter.com/pages/rate-limiting).\nReturned by the Streaming API:\n Too many login attempts in a short period of time.\n Running too many copies of the same application authenticating with the same account name."

    .line 325
    .restart local v0       #cause:Ljava/lang/String;
    goto :goto_0

    .line 327
    .end local v0           #cause:Ljava/lang/String;
    :sswitch_8
    const-string v0, "Something is broken. Please post to the group (http://dev.twitter.com/pages/support) so the Twitter team can investigate."

    .line 328
    .restart local v0       #cause:Ljava/lang/String;
    goto :goto_0

    .line 330
    .end local v0           #cause:Ljava/lang/String;
    :sswitch_9
    const-string v0, "Twitter is down or being upgraded."

    .line 331
    .restart local v0       #cause:Ljava/lang/String;
    goto :goto_0

    .line 333
    .end local v0           #cause:Ljava/lang/String;
    :sswitch_a
    const-string v0, "The Twitter servers are up, but overloaded with requests. Try again later."

    .line 334
    .restart local v0       #cause:Ljava/lang/String;
    goto :goto_0

    .line 291
    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_0
        0x190 -> :sswitch_1
        0x191 -> :sswitch_2
        0x193 -> :sswitch_3
        0x194 -> :sswitch_4
        0x196 -> :sswitch_5
        0x19d -> :sswitch_6
        0x1a4 -> :sswitch_7
        0x1f4 -> :sswitch_8
        0x1f6 -> :sswitch_9
        0x1f7 -> :sswitch_a
    .end sparse-switch
.end method

.method private getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ltwitter4j/ExceptionDiagnosis;

    sget-object v1, Ltwitter4j/TwitterException;->FILTER:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ltwitter4j/ExceptionDiagnosis;-><init>(Ljava/lang/Throwable;[Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    .line 242
    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    if-ne p0, p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v1

    .line 254
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 256
    check-cast v0, Ltwitter4j/TwitterException;

    .line 258
    .local v0, that:Ltwitter4j/TwitterException;
    iget v3, p0, Ltwitter4j/TwitterException;->retryAfter:I

    iget v4, v0, Ltwitter4j/TwitterException;->retryAfter:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 259
    :cond_4
    iget v3, p0, Ltwitter4j/TwitterException;->statusCode:I

    iget v4, v0, Ltwitter4j/TwitterException;->statusCode:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 260
    :cond_5
    iget-object v3, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    iget-object v4, v0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 261
    goto :goto_0

    .line 260
    :cond_6
    iget-object v3, v0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public exceededRateLimitation()Z
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x1a4

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExceptionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Ltwitter4j/TwitterException;->getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;

    move-result-object v0

    invoke-virtual {v0}, Ltwitter4j/ExceptionDiagnosis;->asHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureSpecificRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Ltwitter4j/TwitterException;->responseHeaderFields:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Ltwitter4j/TwitterException;->responseHeaderFields:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 133
    .local v0, header:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 134
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #value:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 137
    .end local v0           #header:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #value:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getRetryAfter()I
    .locals 3

    .prologue
    .line 176
    const/4 v0, -0x1

    .line 177
    .local v0, retryAfter:I
    iget v1, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v2, 0x190

    if-ne v1, v2, :cond_1

    .line 178
    iget-object v1, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    invoke-interface {v1}, Ltwitter4j/RateLimitStatus;->getSecondsUntilReset()I

    move-result v0

    .line 184
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 185
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Rate limitation is not exceeded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_1
    iget v1, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v2, 0x1a4

    if-ne v1, v2, :cond_0

    .line 182
    iget v0, p0, Ltwitter4j/TwitterException;->retryAfter:I

    goto :goto_0

    .line 187
    :cond_2
    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 268
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 269
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/TwitterException;->retryAfter:I

    add-int v0, v1, v2

    .line 270
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 271
    return v0

    .line 270
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCausedByNetworkIssue()Z
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    return v0
.end method

.method public resourceNotFound()Z
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setNested()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    .line 249
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\nTwitterException{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterException;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retryAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterException;->retryAfter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", rateLimitStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Relevant discussions can be on the Internet at:\n\thttp://www.google.co.jp/search?q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0}, Ltwitter4j/TwitterException;->getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/ExceptionDiagnosis;->getStackLineHashAsHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " or\n\thttp://www.google.co.jp/search?q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {p0}, Ltwitter4j/TwitterException;->getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/ExceptionDiagnosis;->getLineNumberHashAsHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "exceptionCode=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getExceptionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method
