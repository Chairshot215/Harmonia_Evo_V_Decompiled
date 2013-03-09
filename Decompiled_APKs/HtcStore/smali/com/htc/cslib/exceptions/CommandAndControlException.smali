.class public Lcom/htc/cslib/exceptions/CommandAndControlException;
.super Ljava/lang/Exception;
.source "CommandAndControlException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _code:I

.field private _message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 0
    .parameter "message"
    .parameter "code"
    .parameter "inner"

    .prologue
    .line 14
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    iput-object p1, p0, Lcom/htc/cslib/exceptions/CommandAndControlException;->_message:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/htc/cslib/exceptions/CommandAndControlException;->_code:I

    .line 17
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/cslib/exceptions/CommandAndControlException;->_code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/cslib/exceptions/CommandAndControlException;->_message:Ljava/lang/String;

    return-object v0
.end method
