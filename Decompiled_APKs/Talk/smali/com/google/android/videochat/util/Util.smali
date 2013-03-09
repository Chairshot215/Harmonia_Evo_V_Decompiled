.class public Lcom/google/android/videochat/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLooseJidMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "jid1"
    .parameter "jid2"

    .prologue
    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/videochat/util/Util;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseBareAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "xmppAddress"

    .prologue
    .line 21
    if-nez p0, :cond_1

    .line 22
    const/4 p0, 0x0

    .line 30
    .end local p0
    .local v0, slashIndex:I
    :cond_0
    :goto_0
    return-object p0

    .line 24
    .end local v0           #slashIndex:I
    .restart local p0
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 25
    .restart local v0       #slashIndex:I
    if-ltz v0, :cond_0

    .line 27
    if-nez v0, :cond_2

    .line 28
    const-string p0, ""

    goto :goto_0

    .line 30
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
