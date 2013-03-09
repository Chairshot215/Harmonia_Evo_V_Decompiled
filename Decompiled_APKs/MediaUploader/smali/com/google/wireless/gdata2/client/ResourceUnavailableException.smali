.class public Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
.super Lcom/google/wireless/gdata2/GDataException;
.source "ResourceUnavailableException.java"


# instance fields
.field private retryAfter:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/wireless/gdata2/GDataException;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->retryAfter:J

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/GDataException;-><init>(Ljava/lang/String;)V

    .line 30
    iput-wide p2, p0, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->retryAfter:J

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/GDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    iput-wide p3, p0, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->retryAfter:J

    .line 46
    return-void
.end method


# virtual methods
.method public getRetryAfter()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->retryAfter:J

    return-wide v0
.end method
