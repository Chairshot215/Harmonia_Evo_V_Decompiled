.class public Lcom/futuredial/CancelException;
.super Lcom/futuredial/CommonException;
.source "CancelException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/futuredial/CommonException;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/futuredial/CommonException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "detailMessage"
    .parameter "throwable"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/futuredial/CommonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "throwable"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/futuredial/CommonException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method
