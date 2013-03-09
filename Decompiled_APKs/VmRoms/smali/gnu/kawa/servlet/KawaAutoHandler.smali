.class public Lgnu/kawa/servlet/KawaAutoHandler;
.super Ljava/lang/Object;
.source "KawaAutoHandler.java"


# static fields
.field static final MODULE_MAP_ATTRIBUTE:Ljava/lang/String; = "gnu.kawa.module-map"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModule(Lgnu/kawa/servlet/HttpRequestContext;Lgnu/mapping/CallContext;Z)Ljava/lang/Object;
    .locals 12
    .parameter "hctx"
    .parameter "ctx"
    .parameter "saveClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestPath()Ljava/lang/String;

    move-result-object p2

    .line 42
    .local p2, path:Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 43
    .end local p2           #path:Ljava/lang/String;
    .local v6, path:Ljava/lang/String;
    const-string p2, "gnu.kawa.module-map"

    invoke-virtual {p0, p2}, Lgnu/kawa/servlet/HttpRequestContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Hashtable;

    .line 45
    .local p2, mmap:Ljava/util/Hashtable;
    if-nez p2, :cond_0

    .line 47
    new-instance p2, Ljava/util/Hashtable;

    .end local p2           #mmap:Ljava/util/Hashtable;
    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    .line 48
    .restart local p2       #mmap:Ljava/util/Hashtable;
    const-string v0, "gnu.kawa.module-map"

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/servlet/HttpRequestContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v2, p2

    .line 51
    .end local p2           #mmap:Ljava/util/Hashtable;
    .local v2, mmap:Ljava/util/Hashtable;
    const-string p2, "gnu.kawa.module-context"

    invoke-virtual {p0, p2}, Lgnu/kawa/servlet/HttpRequestContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/expr/ModuleContext;

    .line 53
    .local p2, mcontext:Lgnu/expr/ModuleContext;
    if-nez p2, :cond_14

    .line 54
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object p2

    move-object v1, p2

    .line 55
    .end local p2           #mcontext:Lgnu/expr/ModuleContext;
    .local v1, mcontext:Lgnu/expr/ModuleContext;
    :goto_0
    sget p2, Lgnu/expr/ModuleContext;->IN_HTTP_SERVER:I

    invoke-virtual {v1, p2}, Lgnu/expr/ModuleContext;->addFlags(I)V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KawaServlet$Context"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 57
    sget p2, Lgnu/expr/ModuleContext;->IN_SERVLET:I

    invoke-virtual {v1, p2}, Lgnu/expr/ModuleContext;->addFlags(I)V

    .line 58
    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/expr/ModuleInfo;

    .line 59
    .local p2, minfo:Lgnu/expr/ModuleInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 60
    .local v4, now:J
    invoke-virtual {v1}, Lgnu/expr/ModuleContext;->getManager()Lgnu/expr/ModuleManager;

    move-result-object v0

    .line 62
    .local v0, mmanager:Lgnu/expr/ModuleManager;
    if-eqz p2, :cond_2

    iget-wide v7, p2, Lgnu/expr/ModuleInfo;->lastCheckedTime:J

    sub-long v7, v4, v7

    iget-wide v9, v0, Lgnu/expr/ModuleManager;->lastModifiedCacheTime:J

    cmp-long v3, v7, v9

    if-gez v3, :cond_2

    .line 64
    invoke-virtual {v1, p2}, Lgnu/expr/ModuleContext;->findInstance(Lgnu/expr/ModuleInfo;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    move-object p1, p0

    move-object p0, p2

    .line 232
    .end local v0           #mmanager:Lgnu/expr/ModuleManager;
    .end local v1           #mcontext:Lgnu/expr/ModuleContext;
    .end local v2           #mmap:Ljava/util/Hashtable;
    .end local v4           #now:J
    .end local p1
    .end local p2           #minfo:Lgnu/expr/ModuleInfo;
    .local p0, minfo:Lgnu/expr/ModuleInfo;
    :goto_1
    return-object p1

    .line 66
    .restart local v0       #mmanager:Lgnu/expr/ModuleManager;
    .restart local v1       #mcontext:Lgnu/expr/ModuleContext;
    .restart local v2       #mmap:Ljava/util/Hashtable;
    .restart local v4       #now:J
    .local p0, hctx:Lgnu/kawa/servlet/HttpRequestContext;
    .restart local p1
    .restart local p2       #minfo:Lgnu/expr/ModuleInfo;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 68
    .local v3, plen:I
    if-eqz v3, :cond_3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    .end local v3           #plen:I
    move-result v3

    const/16 v7, 0x2f

    if-ne v3, v7, :cond_5

    :cond_3
    const/4 v3, 0x0

    move-object v7, v3

    .line 71
    .local v7, url:Ljava/net/URL;
    :goto_2
    move-object v3, v6

    .line 72
    .local v3, upath:Ljava/lang/String;
    if-nez v7, :cond_7

    .line 74
    move-object v8, v6

    .local v8, xpath:Ljava/lang/String;
    move-object v9, v8

    .end local v8           #xpath:Ljava/lang/String;
    .local v9, xpath:Ljava/lang/String;
    move-object v8, v7

    .end local v7           #url:Ljava/net/URL;
    .local v8, url:Ljava/net/URL;
    move-object v7, v3

    .line 77
    .end local v3           #upath:Ljava/lang/String;
    .local v7, upath:Ljava/lang/String;
    :cond_4
    const/16 v3, 0x2f

    invoke-virtual {v9, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 78
    .local v3, sl:I
    if-gez v3, :cond_6

    move-object v3, v7

    .end local v7           #upath:Ljava/lang/String;
    .local v3, upath:Ljava/lang/String;
    move-object v7, v8

    .end local v8           #url:Ljava/net/URL;
    .local v7, url:Ljava/net/URL;
    move-object v8, v9

    .end local v9           #xpath:Ljava/lang/String;
    .local v8, xpath:Ljava/lang/String;
    :goto_3
    move-object v8, v7

    .end local v7           #url:Ljava/net/URL;
    .local v8, url:Ljava/net/URL;
    move-object v7, v3

    .line 95
    .end local v3           #upath:Ljava/lang/String;
    .local v7, upath:Ljava/lang/String;
    :goto_4
    if-nez v8, :cond_8

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The requested URL "

    .end local v0           #mmanager:Lgnu/expr/ModuleManager;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " was not found on this server."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " res/:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Lgnu/kawa/servlet/HttpRequestContext;->getResourceURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    .local p1, msg:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 101
    .local p1, bmsg:[B
    const/16 v0, 0x194

    const/4 v1, 0x0

    array-length v2, p1

    .end local v1           #mcontext:Lgnu/expr/ModuleContext;
    .end local v2           #mmap:Ljava/util/Hashtable;
    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/kawa/servlet/HttpRequestContext;->sendResponseHeaders(ILjava/lang/String;J)V

    .line 102
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getResponseStream()Ljava/io/OutputStream;

    move-result-object p0

    .line 105
    .local p0, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, p2

    .end local p2           #minfo:Lgnu/expr/ModuleInfo;
    .local p0, minfo:Lgnu/expr/ModuleInfo;
    goto :goto_1

    .line 68
    .end local v7           #upath:Ljava/lang/String;
    .end local v8           #url:Ljava/net/URL;
    .restart local v0       #mmanager:Lgnu/expr/ModuleManager;
    .restart local v1       #mcontext:Lgnu/expr/ModuleContext;
    .restart local v2       #mmap:Ljava/util/Hashtable;
    .local p0, hctx:Lgnu/kawa/servlet/HttpRequestContext;
    .local p1, ctx:Lgnu/mapping/CallContext;
    .restart local p2       #minfo:Lgnu/expr/ModuleInfo;
    :cond_5
    invoke-virtual {p0, v6}, Lgnu/kawa/servlet/HttpRequestContext;->getResourceURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    move-object v7, v3

    goto :goto_2

    .line 80
    .local v3, sl:I
    .restart local v7       #upath:Ljava/lang/String;
    .restart local v8       #url:Ljava/net/URL;
    .restart local v9       #xpath:Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v9, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v7           #upath:Ljava/lang/String;
    move-result-object v9

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/+default+"

    .end local v8           #url:Ljava/net/URL;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 82
    .restart local v7       #upath:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lgnu/kawa/servlet/HttpRequestContext;->getResourceURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    .line 83
    .restart local v8       #url:Ljava/net/URL;
    if-eqz v8, :cond_4

    .line 85
    const/4 v10, 0x1

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v3           #sl:I
    move-result-object v3

    invoke-virtual {p0, v10, v3}, Lgnu/kawa/servlet/HttpRequestContext;->setScriptAndLocalPath(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    .end local v7           #upath:Ljava/lang/String;
    .local v3, upath:Ljava/lang/String;
    move-object v7, v8

    .end local v8           #url:Ljava/net/URL;
    .local v7, url:Ljava/net/URL;
    move-object v8, v9

    .line 86
    .end local v9           #xpath:Ljava/lang/String;
    .local v8, xpath:Ljava/lang/String;
    goto/16 :goto_3

    .line 92
    .end local v8           #xpath:Ljava/lang/String;
    :cond_7
    const-string v8, ""

    invoke-virtual {p0, v6, v8}, Lgnu/kawa/servlet/HttpRequestContext;->setScriptAndLocalPath(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v7

    .end local v7           #url:Ljava/net/URL;
    .local v8, url:Ljava/net/URL;
    move-object v7, v3

    .end local v3           #upath:Ljava/lang/String;
    .local v7, upath:Ljava/lang/String;
    goto/16 :goto_4

    .line 107
    .end local v0           #mmanager:Lgnu/expr/ModuleManager;
    .end local v1           #mcontext:Lgnu/expr/ModuleContext;
    .end local v2           #mmap:Ljava/util/Hashtable;
    .local p0, out:Ljava/io/OutputStream;
    .local p1, bmsg:[B
    :catch_0
    move-exception p0

    .line 109
    .local p0, ex:Ljava/io/IOException;
    new-instance p1, Ljava/lang/RuntimeException;

    .end local p1           #bmsg:[B
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 114
    .restart local v0       #mmanager:Lgnu/expr/ModuleManager;
    .restart local v1       #mcontext:Lgnu/expr/ModuleContext;
    .restart local v2       #mmap:Ljava/util/Hashtable;
    .local p0, hctx:Lgnu/kawa/servlet/HttpRequestContext;
    .local p1, ctx:Lgnu/mapping/CallContext;
    :cond_8
    invoke-virtual {v8}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, urlString:Ljava/lang/String;
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lgnu/expr/ModuleInfo;->getSourceAbsPathname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .end local v3           #urlString:Ljava/lang/String;
    if-nez v3, :cond_13

    .line 116
    :cond_9
    invoke-virtual {v0, v8}, Lgnu/expr/ModuleManager;->findWithURL(Ljava/net/URL;)Lgnu/expr/ModuleInfo;

    move-result-object p2

    move-object v3, p2

    .line 117
    .end local p2           #minfo:Lgnu/expr/ModuleInfo;
    .local v3, minfo:Lgnu/expr/ModuleInfo;
    :goto_5
    invoke-virtual {v3, v0, v4, v5}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 118
    invoke-virtual {v1, v3}, Lgnu/expr/ModuleContext;->findInstance(Lgnu/expr/ModuleInfo;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #hctx:Lgnu/kawa/servlet/HttpRequestContext;
    move-object p1, p0

    move-object p0, v3

    .end local v3           #minfo:Lgnu/expr/ModuleInfo;
    .local p0, minfo:Lgnu/expr/ModuleInfo;
    goto/16 :goto_1

    .line 120
    .restart local v3       #minfo:Lgnu/expr/ModuleInfo;
    .local p0, hctx:Lgnu/kawa/servlet/HttpRequestContext;
    :cond_a
    invoke-virtual {v2, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v3}, Lgnu/expr/ModuleInfo;->getSourceAbsPath()Lgnu/text/Path;

    move-result-object p2

    .line 123
    .local p2, absPath:Lgnu/text/Path;
    invoke-virtual {p2}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 124
    .local v0, resourceStream:Ljava/io/InputStream;
    instance-of v2, v0, Ljava/io/BufferedInputStream;

    .end local v2           #mmap:Ljava/util/Hashtable;
    if-nez v2, :cond_12

    .line 127
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 129
    .end local v0           #resourceStream:Ljava/io/InputStream;
    .local v2, resourceStream:Ljava/io/InputStream;
    :goto_6
    invoke-static {v6}, Lgnu/expr/Language;->getInstanceFromFilenameExtension(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    .line 131
    .local v0, language:Lgnu/expr/Language;
    if-eqz v0, :cond_c

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #now:J
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lgnu/expr/Language;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " source file (based on extension)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/kawa/servlet/HttpRequestContext;->log(Ljava/lang/String;)V

    .line 177
    :goto_7
    new-instance v4, Lgnu/mapping/InPort;

    invoke-direct {v4, v2, p2}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;)V

    .line 178
    .local v4, port:Lgnu/mapping/InPort;
    invoke-static {v0}, Lgnu/expr/Language;->setCurrentLanguage(Lgnu/expr/Language;)V

    .line 179
    new-instance v2, Lgnu/text/SourceMessages;

    .end local v2           #resourceStream:Ljava/io/InputStream;
    invoke-direct {v2}, Lgnu/text/SourceMessages;-><init>()V

    .line 184
    .local v2, messages:Lgnu/text/SourceMessages;
    const/16 p2, 0x9

    :try_start_1
    invoke-virtual {v0, v4, v2, p2, v3}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    :try_end_1
    .catch Lgnu/text/SyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    .end local p2           #absPath:Lgnu/text/Path;
    move-result-object p2

    .local p2, comp:Lgnu/expr/Compilation;
    move-object v0, p2

    .line 204
    .end local p2           #comp:Lgnu/expr/Compilation;
    .local v0, comp:Lgnu/expr/Compilation;
    :goto_8
    const/4 p2, 0x0

    .line 205
    .local p2, cl:Ljava/lang/Class;
    invoke-virtual {v2}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    .end local v4           #port:Lgnu/mapping/InPort;
    if-nez v4, :cond_b

    .line 207
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object p2

    .line 209
    .local p2, mexp:Lgnu/expr/ModuleExp;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object p2

    .line 210
    .local p2, env:Lgnu/mapping/Environment;
    const/4 v4, 0x0

    invoke-static {p2, v0, v8, v4}, Lgnu/expr/ModuleExp;->evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #env:Lgnu/mapping/Environment;
    check-cast p2, Ljava/lang/Class;

    .line 213
    .local p2, cl:Ljava/lang/Class;
    :cond_b
    invoke-virtual {v2}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v0

    .end local v0           #comp:Lgnu/expr/Compilation;
    if-eqz v0, :cond_11

    .line 219
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #cl:Ljava/lang/Class;
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "script syntax error:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x14

    invoke-virtual {v2, v0}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 220
    .local p2, msg:Ljava/lang/String;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/kawa/servlet/ServletPrinter;

    const-string v1, "Content-type"

    .end local v1           #mcontext:Lgnu/expr/ModuleContext;
    const-string v2, "text/plain"

    .end local v2           #messages:Lgnu/text/SourceMessages;
    invoke-virtual {v0, v1, v2}, Lgnu/kawa/servlet/ServletPrinter;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/16 v0, 0x1f4

    const-string v1, "Syntax errors"

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v0, v1, v4, v5}, Lgnu/kawa/servlet/HttpRequestContext;->sendResponseHeaders(ILjava/lang/String;J)V

    .line 222
    iget-object p0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .end local p0           #hctx:Lgnu/kawa/servlet/HttpRequestContext;
    invoke-interface {p0, p2}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3}, Lgnu/expr/ModuleInfo;->cleanupAfterCompilation()V

    .line 224
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v3

    .end local v3           #minfo:Lgnu/expr/ModuleInfo;
    .local p0, minfo:Lgnu/expr/ModuleInfo;
    goto/16 :goto_1

    .line 136
    .local v0, language:Lgnu/expr/Language;
    .restart local v1       #mcontext:Lgnu/expr/ModuleContext;
    .local v2, resourceStream:Ljava/io/InputStream;
    .restart local v3       #minfo:Lgnu/expr/ModuleInfo;
    .local v4, now:J
    .local p0, hctx:Lgnu/kawa/servlet/HttpRequestContext;
    .local p2, absPath:Lgnu/text/Path;
    :cond_c
    invoke-static {v2}, Lgnu/expr/Language;->detect(Ljava/io/InputStream;)Lgnu/expr/Language;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_d

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #now:J
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lgnu/expr/Language;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " source file (detected from content)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/kawa/servlet/HttpRequestContext;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 141
    .restart local v4       #now:J
    :cond_d
    if-eq v6, v7, :cond_e

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #ctx:Lgnu/mapping/CallContext;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The requested URL "

    .end local p2           #absPath:Lgnu/text/Path;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " was not found on this server."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " upath="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    .local p1, msg:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 146
    .local p1, bmsg:[B
    const/16 p2, 0x194

    const/4 v0, 0x0

    array-length v1, p1

    .end local v0           #language:Lgnu/expr/Language;
    .end local v1           #mcontext:Lgnu/expr/ModuleContext;
    int-to-long v1, v1

    invoke-virtual {p0, p2, v0, v1, v2}, Lgnu/kawa/servlet/HttpRequestContext;->sendResponseHeaders(ILjava/lang/String;J)V

    .line 147
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getResponseStream()Ljava/io/OutputStream;

    move-result-object p0

    .line 150
    .local p0, out:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v3

    .end local v3           #minfo:Lgnu/expr/ModuleInfo;
    .local p0, minfo:Lgnu/expr/ModuleInfo;
    goto/16 :goto_1

    .line 152
    .restart local v3       #minfo:Lgnu/expr/ModuleInfo;
    .local p0, out:Ljava/io/OutputStream;
    :catch_1
    move-exception p0

    .line 154
    .local p0, ex:Ljava/io/IOException;
    new-instance p1, Ljava/lang/RuntimeException;

    .end local p1           #bmsg:[B
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 161
    .restart local v0       #language:Lgnu/expr/Language;
    .restart local v1       #mcontext:Lgnu/expr/ModuleContext;
    .local p0, hctx:Lgnu/kawa/servlet/HttpRequestContext;
    .local p1, ctx:Lgnu/mapping/CallContext;
    .restart local p2       #absPath:Lgnu/text/Path;
    :cond_e
    invoke-virtual {p2}, Lgnu/text/Path;->getContentLength()J

    move-result-wide p1

    .line 162
    .end local p2           #absPath:Lgnu/text/Path;
    .local p1, len:J
    const/16 v0, 0xc8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lgnu/kawa/servlet/HttpRequestContext;->sendResponseHeaders(ILjava/lang/String;J)V

    .line 163
    .end local v0           #language:Lgnu/expr/Language;
    .end local v1           #mcontext:Lgnu/expr/ModuleContext;
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getResponseStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 164
    .end local p1           #len:J
    .local p2, out:Ljava/io/OutputStream;
    const/16 p0, 0x1000

    new-array p0, p0, [B

    .line 167
    .local p0, buffer:[B
    :goto_9
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 168
    .local p1, n:I
    if-gez p1, :cond_f

    .line 172
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 173
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 174
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v3

    .end local v3           #minfo:Lgnu/expr/ModuleInfo;
    .local p0, minfo:Lgnu/expr/ModuleInfo;
    goto/16 :goto_1

    .line 170
    .restart local v3       #minfo:Lgnu/expr/ModuleInfo;
    .local p0, buffer:[B
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9

    .line 196
    .end local p2           #out:Ljava/io/OutputStream;
    .restart local v0       #language:Lgnu/expr/Language;
    .restart local v1       #mcontext:Lgnu/expr/ModuleContext;
    .local v2, messages:Lgnu/text/SourceMessages;
    .local v4, port:Lgnu/mapping/InPort;
    .local p0, hctx:Lgnu/kawa/servlet/HttpRequestContext;
    .local p1, ctx:Lgnu/mapping/CallContext;
    :catch_2
    move-exception p2

    .line 198
    .local p2, ex:Lgnu/text/SyntaxException;
    invoke-virtual {p2}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    .end local v0           #language:Lgnu/expr/Language;
    if-eq v0, v2, :cond_10

    .line 199
    throw p2

    .line 201
    :cond_10
    const/4 p2, 0x0

    .local p2, comp:Lgnu/expr/Compilation;
    move-object v0, p2

    .end local p2           #comp:Lgnu/expr/Compilation;
    .local v0, comp:Lgnu/expr/Compilation;
    goto/16 :goto_8

    .line 227
    .end local v0           #comp:Lgnu/expr/Compilation;
    .end local v4           #port:Lgnu/mapping/InPort;
    .local p2, cl:Ljava/lang/Class;
    :cond_11
    invoke-virtual {v3, p2}, Lgnu/expr/ModuleInfo;->setModuleClass(Ljava/lang/Class;)V

    .line 232
    invoke-virtual {v1, v3}, Lgnu/expr/ModuleContext;->findInstance(Lgnu/expr/ModuleInfo;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #hctx:Lgnu/kawa/servlet/HttpRequestContext;
    move-object p1, p0

    move-object p0, v3

    .end local v3           #minfo:Lgnu/expr/ModuleInfo;
    .local p0, minfo:Lgnu/expr/ModuleInfo;
    goto/16 :goto_1

    .end local v2           #messages:Lgnu/text/SourceMessages;
    .local v0, resourceStream:Ljava/io/InputStream;
    .restart local v3       #minfo:Lgnu/expr/ModuleInfo;
    .local v4, now:J
    .local p0, hctx:Lgnu/kawa/servlet/HttpRequestContext;
    .local p2, absPath:Lgnu/text/Path;
    :cond_12
    move-object v2, v0

    .end local v0           #resourceStream:Ljava/io/InputStream;
    .local v2, resourceStream:Ljava/io/InputStream;
    goto/16 :goto_6

    .end local v3           #minfo:Lgnu/expr/ModuleInfo;
    .local v0, mmanager:Lgnu/expr/ModuleManager;
    .local v2, mmap:Ljava/util/Hashtable;
    .local p2, minfo:Lgnu/expr/ModuleInfo;
    :cond_13
    move-object v3, p2

    .end local p2           #minfo:Lgnu/expr/ModuleInfo;
    .restart local v3       #minfo:Lgnu/expr/ModuleInfo;
    goto/16 :goto_5

    .end local v0           #mmanager:Lgnu/expr/ModuleManager;
    .end local v1           #mcontext:Lgnu/expr/ModuleContext;
    .end local v3           #minfo:Lgnu/expr/ModuleInfo;
    .end local v4           #now:J
    .end local v7           #upath:Ljava/lang/String;
    .end local v8           #url:Ljava/net/URL;
    .local p2, mcontext:Lgnu/expr/ModuleContext;
    :cond_14
    move-object v1, p2

    .end local p2           #mcontext:Lgnu/expr/ModuleContext;
    .restart local v1       #mcontext:Lgnu/expr/ModuleContext;
    goto/16 :goto_0
.end method

.method public static run(Lgnu/kawa/servlet/HttpRequestContext;Lgnu/mapping/CallContext;)V
    .locals 3
    .parameter "hctx"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 30
    const-string v2, "qexo-save-class"

    invoke-virtual {p0, v2}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 31
    .local v1, saveClass:Z
    :goto_0
    invoke-static {p0, p1, v1}, Lgnu/kawa/servlet/KawaAutoHandler;->getModule(Lgnu/kawa/servlet/HttpRequestContext;Lgnu/mapping/CallContext;Z)Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, mod:Ljava/lang/Object;
    instance-of v2, v0, Lgnu/expr/ModuleBody;

    if-eqz v2, :cond_0

    .line 34
    check-cast v0, Lgnu/expr/ModuleBody;

    .end local v0           #mod:Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 35
    :cond_0
    return-void

    .line 30
    .end local v1           #saveClass:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method
