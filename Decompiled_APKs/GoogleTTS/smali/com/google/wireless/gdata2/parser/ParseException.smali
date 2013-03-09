.class public Lcom/google/wireless/gdata2/parser/ParseException;
.super Lcom/google/wireless/gdata2/GDataException;
.source "ParseException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/wireless/gdata2/GDataException;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/wireless/gdata2/GDataException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/wireless/gdata2/GDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method
