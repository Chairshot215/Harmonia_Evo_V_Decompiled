.class public Lorg/jivesoftware/smack/XMPPException;
.super Ljava/lang/Exception;
.source "XMPPException.java"


# instance fields
.field private error:Lorg/jivesoftware/smack/packet/XMPPError;

.field private streamError:Lorg/jivesoftware/smack/packet/StreamError;

.field private wrappedThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 45
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 46
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 47
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 46
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 47
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "wrappedThrowable"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 46
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 47
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 108
    iput-object p2, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V
    .locals 1
    .parameter "message"
    .parameter "error"

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 46
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 47
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 134
    iput-object p2, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "error"
    .parameter "wrappedThrowable"

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 46
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 47
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 121
    iput-object p2, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 122
    iput-object p3, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "wrappedThrowable"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 45
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 46
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 47
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 73
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/StreamError;)V
    .locals 1
    .parameter "streamError"

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 45
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 46
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 47
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 85
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/XMPPError;)V
    .locals 1
    .parameter "error"

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 45
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    .line 46
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 47
    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    .line 96
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 97
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/XMPPError;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 195
    .restart local v0       #msg:Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StreamError;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStreamError()Lorg/jivesoftware/smack/packet/StreamError;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    return-object v0
.end method

.method public getWrappedThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 170
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 173
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 174
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "Nested Exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 178
    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 181
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 182
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "Nested Exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 186
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 203
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, message:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPException;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 210
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    if-eqz v2, :cond_2

    .line 211
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPException;->streamError:Lorg/jivesoftware/smack/packet/StreamError;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 213
    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 214
    const-string v2, "\n  -- caused by: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/XMPPException;->wrappedThrowable:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 217
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
