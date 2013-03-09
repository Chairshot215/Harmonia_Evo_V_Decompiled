.class public Ljava/sql/SQLException;
.super Ljava/lang/Exception;
.source "SQLException.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/sql/SQLException$InternalIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1da1e930db3e75dcL


# instance fields
.field private SQLState:Ljava/lang/String;

.field private next:Ljava/sql/SQLException;

.field private vendorCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    iput p3, p0, Ljava/sql/SQLException;->vendorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Ljava/sql/SQLException;->vendorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/sql/SQLException;)Ljava/sql/SQLException;
    .locals 1

    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Ljava/sql/SQLException;->vendorCode:I

    return v0
.end method

.method public getNextException()Ljava/sql/SQLException;
    .locals 1

    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    return-object v0
.end method

.method public getSQLState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/sql/SQLException$InternalIterator;

    invoke-direct {v0, p0}, Ljava/sql/SQLException$InternalIterator;-><init>(Ljava/sql/SQLException;)V

    return-object v0
.end method

.method public setNextException(Ljava/sql/SQLException;)V
    .locals 1

    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    goto :goto_0
.end method
