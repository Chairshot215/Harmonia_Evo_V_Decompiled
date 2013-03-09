.class public Ljava/sql/SQLWarning;
.super Ljava/sql/SQLException;
.source "SQLWarning.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x365d2d0aa3e484d8L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getNextWarning()Ljava/sql/SQLWarning;
    .locals 3

    invoke-super {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/sql/SQLWarning;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/sql/SQLWarning;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/Error;

    const-string v2, "SQLWarning chain holds value that is not a SQLWarning"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setNextWarning(Ljava/sql/SQLWarning;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    return-void
.end method
