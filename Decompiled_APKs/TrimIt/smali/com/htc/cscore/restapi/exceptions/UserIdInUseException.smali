.class public Lcom/htc/cscore/restapi/exceptions/UserIdInUseException;
.super Ljava/lang/Exception;
.source "UserIdInUseException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "message"
    .parameter "e"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    return-void
.end method
