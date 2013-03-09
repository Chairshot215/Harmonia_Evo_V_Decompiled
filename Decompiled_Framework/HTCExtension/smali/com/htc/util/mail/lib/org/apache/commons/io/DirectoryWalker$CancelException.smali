.class public Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException;
.super Ljava/io/IOException;
.source "DirectoryWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x12b2b63ef9f577f0L


# instance fields
.field private depth:I

.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 1

    const-string v0, "Operation Cancelled"

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException;->depth:I

    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException;->file:Ljava/io/File;

    iput p3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException;->depth:I

    return-void
.end method


# virtual methods
.method public getDepth()I
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException;->depth:I

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/DirectoryWalker$CancelException;->file:Ljava/io/File;

    return-object v0
.end method
