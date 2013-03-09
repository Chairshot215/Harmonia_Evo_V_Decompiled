.class abstract Ltwitter4j/TwitterResponseImpl;
.super Ljava/lang/Object;
.source "TwitterResponseImpl.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x65187b8c49dbba7bL


# instance fields
.field private transient rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 36
    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 39
    invoke-static {p1}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 40
    return-void
.end method


# virtual methods
.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method
