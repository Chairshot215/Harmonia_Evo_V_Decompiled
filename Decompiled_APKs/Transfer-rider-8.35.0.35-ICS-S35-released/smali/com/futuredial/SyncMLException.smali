.class Lcom/futuredial/SyncMLException;
.super Lcom/futuredial/CommonException;
.source "CommonException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/futuredial/CommonException;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/futuredial/CommonException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/futuredial/CommonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "throwable"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/futuredial/CommonException;-><init>(Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method
