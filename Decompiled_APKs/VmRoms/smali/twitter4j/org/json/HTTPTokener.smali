.class public Ltwitter4j/org/json/HTTPTokener;
.super Ltwitter4j/org/json/JSONTokener;
.source "HTTPTokener.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ltwitter4j/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public nextToken()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v2, sb:Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/org/json/HTTPTokener;->next()C

    move-result v0

    .line 55
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    const/16 v3, 0x22

    if-eq v0, v3, :cond_1

    const/16 v3, 0x27

    if-ne v0, v3, :cond_5

    .line 57
    :cond_1
    move v1, v0

    .line 59
    .local v1, q:C
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/org/json/HTTPTokener;->next()C

    move-result v0

    .line 60
    const/16 v3, 0x20

    if-ge v0, v3, :cond_2

    .line 61
    const-string v3, "Unterminated string."

    invoke-virtual {p0, v3}, Ltwitter4j/org/json/HTTPTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 63
    :cond_2
    if-ne v0, v1, :cond_3

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .end local v1           #q:C
    :goto_1
    return-object v3

    .line 66
    .restart local v1       #q:C
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 73
    .end local v1           #q:C
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {p0}, Ltwitter4j/org/json/HTTPTokener;->next()C

    move-result v0

    .line 70
    :cond_5
    if-eqz v0, :cond_6

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 71
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
