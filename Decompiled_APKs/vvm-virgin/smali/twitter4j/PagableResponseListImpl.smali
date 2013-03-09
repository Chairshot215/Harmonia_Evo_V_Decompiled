.class Ltwitter4j/PagableResponseListImpl;
.super Ltwitter4j/ResponseListImpl;
.source "PagableResponseListImpl.java"

# interfaces
.implements Ltwitter4j/PagableResponseList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltwitter4j/ResponseListImpl;",
        "Ltwitter4j/PagableResponseList;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x154294b63421ddc1L


# instance fields
.field private final nextCursor:J

.field private final previousCursor:J


# direct methods
.method constructor <init>(ILorg/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V
    .locals 2
    .parameter "size"
    .parameter "json"
    .parameter "res"

    .prologue
    .line 33
    .local p0, this:Ltwitter4j/PagableResponseListImpl;,"Ltwitter4j/PagableResponseListImpl<TT;>;"
    invoke-direct {p0, p1, p3}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 34
    const-string v0, "previous_cursor"

    invoke-static {v0, p2}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/PagableResponseListImpl;->previousCursor:J

    .line 35
    const-string v0, "next_cursor"

    invoke-static {v0, p2}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/PagableResponseListImpl;->nextCursor:J

    .line 36
    return-void
.end method


# virtual methods
.method public getNextCursor()J
    .locals 2

    .prologue
    .line 63
    .local p0, this:Ltwitter4j/PagableResponseListImpl;,"Ltwitter4j/PagableResponseListImpl<TT;>;"
    iget-wide v0, p0, Ltwitter4j/PagableResponseListImpl;->nextCursor:J

    return-wide v0
.end method

.method public getPreviousCursor()J
    .locals 2

    .prologue
    .line 49
    .local p0, this:Ltwitter4j/PagableResponseListImpl;,"Ltwitter4j/PagableResponseListImpl<TT;>;"
    iget-wide v0, p0, Ltwitter4j/PagableResponseListImpl;->previousCursor:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .line 56
    .local p0, this:Ltwitter4j/PagableResponseListImpl;,"Ltwitter4j/PagableResponseListImpl<TT;>;"
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/PagableResponseListImpl;->nextCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 4

    .prologue
    .line 42
    .local p0, this:Ltwitter4j/PagableResponseListImpl;,"Ltwitter4j/PagableResponseListImpl<TT;>;"
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/PagableResponseListImpl;->previousCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
