.class public Ljava/io/WriteAbortedException;
.super Ljava/io/ObjectStreamException;
.source "WriteAbortedException.java"


# static fields
.field private static final serialVersionUID:J = -0x2e29d7644e20988aL


# instance fields
.field public detail:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/ObjectStreamException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    invoke-virtual {p0, p2}, Ljava/io/WriteAbortedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/io/ObjectStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/io/WriteAbortedException;->detail:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
