.class public Lcom/google/wireless/gdata2/client/ResourceUnavailableException;
.super Lcom/google/wireless/gdata2/GDataException;
.source "ResourceUnavailableException.java"


# instance fields
.field private retryAfter:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "retryAfter"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/wireless/gdata2/GDataException;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/google/wireless/gdata2/client/ResourceUnavailableException;->retryAfter:J

    .line 20
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
