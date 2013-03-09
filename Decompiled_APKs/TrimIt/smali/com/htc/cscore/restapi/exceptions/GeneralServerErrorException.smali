.class public Lcom/htc/cscore/restapi/exceptions/GeneralServerErrorException;
.super Ljava/lang/Exception;
.source "GeneralServerErrorException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "message"
    .parameter "e"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    return-void
.end method
