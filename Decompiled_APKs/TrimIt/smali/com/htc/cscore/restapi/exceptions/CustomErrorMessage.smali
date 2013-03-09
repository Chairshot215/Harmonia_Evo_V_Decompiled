.class public Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
.super Ljava/lang/Object;
.source "CustomErrorMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x273ec8db397a486L


# instance fields
.field public ErrorString:Ljava/lang/String;

.field public code:Lcom/htc/cscore/restapi/exceptions/ErrorCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/htc/cscore/restapi/exceptions/ErrorCode;Ljava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "errorString"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->code:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 18
    iput-object p2, p0, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    const-string v0, "ErrorCode=%s, errorString=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->code:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    invoke-virtual {v3}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
