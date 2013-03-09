.class public Lcom/google/android/talk/util/JingleAndGingleStanzaParser;
.super Ljava/lang/Object;
.source "JingleAndGingleStanzaParser.java"


# direct methods
.method public static makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 5
    .parameter "stanza"

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 162
    .local v0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 163
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 165
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-object v1

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "talk:videochat"

    const-string v4, "Couldn\'t parse stanza"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    const/4 v1, 0x0

    goto :goto_0
.end method
