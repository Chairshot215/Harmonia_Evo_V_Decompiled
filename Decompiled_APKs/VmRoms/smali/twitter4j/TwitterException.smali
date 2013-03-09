.class public Ltwitter4j/TwitterException;
.super Ljava/lang/Exception;
.source "TwitterException.java"


# static fields
.field private static final serialVersionUID:J = -0x2467dddfd16c8207L


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "msg"
    .parameter "statusCode"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 48
    iput p2, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1
    .parameter "msg"
    .parameter "cause"
    .parameter "statusCode"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 58
    iput p3, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 60
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    return v0
.end method
