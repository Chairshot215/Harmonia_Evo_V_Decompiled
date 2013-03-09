.class public Lcom/google/android/videochat/JingleInfoManager;
.super Ljava/lang/Object;
.source "JingleInfoManager.java"


# static fields
.field private static sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/videochat/JingleInfoManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJingleInfoStanza(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 44
    sget-object v1, Lcom/google/android/videochat/JingleInfoManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    const-string v0, "com.google.android.videochat.JINGLE_INFO"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "com.google.android.videochat.jingle_info_stanza"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 5
    .parameter "stanza"

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 120
    .local v0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 121
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 122
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "vclib:JingleInfoManager"

    const-string v4, "Couldn\'t parse stanza"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static notifyNewJingleInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "jingleInfoStanza"

    .prologue
    .line 61
    const-string v1, "vclib:JingleInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyNewJingleInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.videochat.NOTIFY_JINGLE_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, i:Landroid/content/Intent;
    const-string v1, "JINGLE_INFO_STANZA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method public static parseStanza(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "sessionStanza"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 82
    :try_start_0
    invoke-static {p1}, Lcom/google/android/videochat/JingleInfoManager;->makeParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 83
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 87
    .local v1, eventType:I
    :goto_0
    if-eq v1, v8, :cond_1

    .line 88
    const/4 v10, 0x2

    if-ne v1, v10, :cond_0

    .line 89
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, elementName:Ljava/lang/String;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, ns:Ljava/lang/String;
    const-string v10, "query"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "google:jingleinfo"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 93
    invoke-static {p0, p1}, Lcom/google/android/videochat/JingleInfoManager;->setJingleInfoStanza(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    .end local v0           #elementName:Ljava/lang/String;
    .end local v1           #eventType:I
    .end local v5           #ns:Ljava/lang/String;
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    return v8

    .line 97
    .restart local v1       #eventType:I
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    goto :goto_0

    .line 100
    .end local v1           #eventType:I
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v7

    .line 101
    .local v7, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "vclib:JingleInfoManager"

    const-string v10, "Couldn\'t parse stanza"

    invoke-static {v8, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 102
    goto :goto_1

    .line 103
    .end local v7           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v4

    .line 104
    .local v4, npe:Ljava/lang/NullPointerException;
    const-string v8, "vclib:JingleInfoManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t parse the stanza "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 105
    goto :goto_1

    .line 106
    .end local v4           #npe:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v3

    .line 107
    .local v3, nfe:Ljava/lang/NumberFormatException;
    const-string v8, "vclib:JingleInfoManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t parse the sessionId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 108
    goto :goto_1

    .line 109
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    .line 110
    .local v2, ioe:Ljava/io/IOException;
    const-string v8, "vclib:JingleInfoManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t parse the stanza "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 111
    goto :goto_1

    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v1       #eventType:I
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    move v8, v9

    .line 114
    goto :goto_1
.end method

.method public static setJingleInfoStanza(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "jingleInfoStanza"

    .prologue
    .line 51
    sget-object v2, Lcom/google/android/videochat/JingleInfoManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 52
    :try_start_0
    const-string v1, "vclib:JingleInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setJingleInfoStanza: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "com.google.android.videochat.JINGLE_INFO"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.google.android.videochat.jingle_info_stanza"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    monitor-exit v2

    .line 58
    return-void

    .line 57
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
