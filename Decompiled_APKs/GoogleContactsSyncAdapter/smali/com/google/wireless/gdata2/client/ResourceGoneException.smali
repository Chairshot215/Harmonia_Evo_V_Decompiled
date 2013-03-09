.class public Lcom/google/wireless/gdata2/client/ResourceGoneException;
.super Lcom/google/wireless/gdata2/GDataException;
.source "ResourceGoneException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/wireless/gdata2/GDataException;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/GDataException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/GDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
