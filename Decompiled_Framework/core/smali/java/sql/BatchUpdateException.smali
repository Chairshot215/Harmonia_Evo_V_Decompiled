.class public Ljava/sql/BatchUpdateException;
.super Ljava/sql/SQLException;
.source "BatchUpdateException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x52f473c0c18b0e5dL


# instance fields
.field private updateCounts:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    iput-object p4, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    iput-object p4, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    iput-object p3, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    iput-object p3, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    iput-object p2, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[ILjava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    iput-object p2, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/sql/BatchUpdateException;-><init>([ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    iput-object p1, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    return-void
.end method

.method public constructor <init>([ILjava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    iput-object p1, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    return-void
.end method


# virtual methods
.method public getUpdateCounts()[I
    .locals 1

    iget-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    return-object v0
.end method
