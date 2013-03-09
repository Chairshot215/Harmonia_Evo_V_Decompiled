.class public Ljava/sql/DataTruncation;
.super Ljava/sql/SQLWarning;
.source "DataTruncation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final THE_ERROR_CODE:I = 0x0

.field private static final THE_REASON:Ljava/lang/String; = "Data truncation"

.field private static final THE_SQLSTATE_READ:Ljava/lang/String; = "01004"

.field private static final THE_SQLSTATE_WRITE:Ljava/lang/String; = "22001"

.field private static final serialVersionUID:J = 0x59b5cdae7f4e5851L


# instance fields
.field private dataSize:I

.field private index:I

.field private parameter:Z

.field private read:Z

.field private transferSize:I


# direct methods
.method public constructor <init>(IZZII)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Data truncation"

    const-string v1, "01004"

    invoke-direct {p0, v0, v1, v2}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput v2, p0, Ljava/sql/DataTruncation;->index:I

    iput-boolean v2, p0, Ljava/sql/DataTruncation;->parameter:Z

    iput-boolean v2, p0, Ljava/sql/DataTruncation;->read:Z

    iput v2, p0, Ljava/sql/DataTruncation;->dataSize:I

    iput v2, p0, Ljava/sql/DataTruncation;->transferSize:I

    iput p1, p0, Ljava/sql/DataTruncation;->index:I

    iput-boolean p2, p0, Ljava/sql/DataTruncation;->parameter:Z

    iput-boolean p3, p0, Ljava/sql/DataTruncation;->read:Z

    iput p4, p0, Ljava/sql/DataTruncation;->dataSize:I

    iput p5, p0, Ljava/sql/DataTruncation;->transferSize:I

    return-void
.end method

.method public constructor <init>(IZZIILjava/lang/Throwable;)V
    .locals 3

    const/4 v2, 0x0

    const-string v1, "Data truncation"

    if-eqz p3, :cond_0

    const-string v0, "01004"

    :goto_0
    invoke-direct {p0, v1, v0, v2, p6}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    iput v2, p0, Ljava/sql/DataTruncation;->index:I

    iput-boolean v2, p0, Ljava/sql/DataTruncation;->parameter:Z

    iput-boolean v2, p0, Ljava/sql/DataTruncation;->read:Z

    iput v2, p0, Ljava/sql/DataTruncation;->dataSize:I

    iput v2, p0, Ljava/sql/DataTruncation;->transferSize:I

    iput p1, p0, Ljava/sql/DataTruncation;->index:I

    iput-boolean p2, p0, Ljava/sql/DataTruncation;->parameter:Z

    iput-boolean p3, p0, Ljava/sql/DataTruncation;->read:Z

    iput p4, p0, Ljava/sql/DataTruncation;->dataSize:I

    iput p5, p0, Ljava/sql/DataTruncation;->transferSize:I

    return-void

    :cond_0
    const-string v0, "22001"

    goto :goto_0
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    iget v0, p0, Ljava/sql/DataTruncation;->dataSize:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Ljava/sql/DataTruncation;->index:I

    return v0
.end method

.method public getParameter()Z
    .locals 1

    iget-boolean v0, p0, Ljava/sql/DataTruncation;->parameter:Z

    return v0
.end method

.method public getRead()Z
    .locals 1

    iget-boolean v0, p0, Ljava/sql/DataTruncation;->read:Z

    return v0
.end method

.method public getTransferSize()I
    .locals 1

    iget v0, p0, Ljava/sql/DataTruncation;->transferSize:I

    return v0
.end method
