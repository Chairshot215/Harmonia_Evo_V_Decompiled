.class public Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException;
.super Ljava/io/IOException;
.source "HtcServiceHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/http/HtcServiceHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockedRequestException"
.end annotation


# instance fields
.field private final mRule:Lcom/htc/util/http/HtcUrlRules$Rule;


# direct methods
.method constructor <init>(Lcom/htc/util/http/HtcUrlRules$Rule;)V
    .locals 2
    .parameter "rule"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocked by rule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/util/http/HtcUrlRules$Rule;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException;->mRule:Lcom/htc/util/http/HtcUrlRules$Rule;

    .line 65
    return-void
.end method
