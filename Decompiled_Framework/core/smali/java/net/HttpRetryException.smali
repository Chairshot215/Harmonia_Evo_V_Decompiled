.class public Ljava/net/HttpRetryException;
.super Ljava/io/IOException;
.source "HttpRetryException.java"


# static fields
.field private static final serialVersionUID:J = -0x7f7b4e9993d01e55L


# instance fields
.field private location:Ljava/lang/String;

.field private responseCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/HttpRetryException;->location:Ljava/lang/String;

    iput p2, p0, Ljava/net/HttpRetryException;->responseCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/HttpRetryException;->location:Ljava/lang/String;

    iput p2, p0, Ljava/net/HttpRetryException;->responseCode:I

    iput-object p3, p0, Ljava/net/HttpRetryException;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpRetryException;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/HttpRetryException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public responseCode()I
    .locals 1

    iget v0, p0, Ljava/net/HttpRetryException;->responseCode:I

    return v0
.end method
