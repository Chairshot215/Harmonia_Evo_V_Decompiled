.class public Lcom/htc/util/mail/lib/org/apache/commons/io/IOExceptionWithCause;
.super Ljava/io/IOException;
.source "IOExceptionWithCause.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOExceptionWithCause;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 65
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOExceptionWithCause;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 67
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
