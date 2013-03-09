.class public Ltwitter4j/RateLimitStatus;
.super Ltwitter4j/TwitterResponse;
.source "RateLimitStatus.java"


# static fields
.field private static final serialVersionUID:J = 0xcf6392515d72b83L


# instance fields
.field private hourlyLimit:I

.field private remainingHits:I

.field private resetTime:Ljava/util/Date;

.field private resetTimeInSeconds:I


# direct methods
.method constructor <init>(Ltwitter4j/http/Response;)V
    .locals 3
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponse;-><init>(Ltwitter4j/http/Response;)V

    .line 47
    invoke-virtual {p1}, Ltwitter4j/http/Response;->asDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 48
    .local v0, elem:Lorg/w3c/dom/Element;
    const-string v1, "remaining-hits"

    invoke-static {v1, v0}, Ltwitter4j/RateLimitStatus;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v1

    iput v1, p0, Ltwitter4j/RateLimitStatus;->remainingHits:I

    .line 49
    const-string v1, "hourly-limit"

    invoke-static {v1, v0}, Ltwitter4j/RateLimitStatus;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v1

    iput v1, p0, Ltwitter4j/RateLimitStatus;->hourlyLimit:I

    .line 50
    const-string v1, "reset-time-in-seconds"

    invoke-static {v1, v0}, Ltwitter4j/RateLimitStatus;->getChildInt(Ljava/lang/String;Lorg/w3c/dom/Element;)I

    move-result v1

    iput v1, p0, Ltwitter4j/RateLimitStatus;->resetTimeInSeconds:I

    .line 51
    const-string v1, "reset-time"

    const-string v2, "yyyy-M-d\'T\'HH:mm:ss+00:00"

    invoke-static {v1, v0, v2}, Ltwitter4j/RateLimitStatus;->getChildDate(Ljava/lang/String;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/RateLimitStatus;->resetTime:Ljava/util/Date;

    .line 52
    return-void
.end method


# virtual methods
.method public getDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ltwitter4j/RateLimitStatus;->resetTime:Ljava/util/Date;

    return-object v0
.end method

.method public getHourlyLimit()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Ltwitter4j/RateLimitStatus;->hourlyLimit:I

    return v0
.end method

.method public getRemainingHits()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Ltwitter4j/RateLimitStatus;->remainingHits:I

    return v0
.end method

.method public getResetTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ltwitter4j/RateLimitStatus;->resetTime:Ljava/util/Date;

    return-object v0
.end method

.method public getResetTimeInSeconds()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Ltwitter4j/RateLimitStatus;->resetTimeInSeconds:I

    return v0
.end method
