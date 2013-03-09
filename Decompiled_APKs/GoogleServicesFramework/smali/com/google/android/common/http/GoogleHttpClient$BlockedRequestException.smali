.class public Lcom/google/android/common/http/GoogleHttpClient$BlockedRequestException;
.super Ljava/io/IOException;
.source "GoogleHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/http/GoogleHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockedRequestException"
.end annotation


# instance fields
.field private final mRule:Lcom/google/android/common/http/UrlRules$Rule;


# direct methods
.method constructor <init>(Lcom/google/android/common/http/UrlRules$Rule;)V
    .locals 2
    .parameter "rule"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocked by rule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/google/android/common/http/GoogleHttpClient$BlockedRequestException;->mRule:Lcom/google/android/common/http/UrlRules$Rule;

    .line 75
    return-void
.end method
