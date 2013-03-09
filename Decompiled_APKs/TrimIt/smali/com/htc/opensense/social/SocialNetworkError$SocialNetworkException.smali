.class public Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
.super Ljava/lang/Exception;
.source "SocialNetworkError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/SocialNetworkError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocialNetworkException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x344daa87a1f75b82L


# instance fields
.field code:Lcom/htc/opensense/social/ErrorCode;

.field detailMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/social/ErrorCode;)V
    .locals 1
    .parameter "serverError"

    .prologue
    .line 41
    const-string v0, "unknown"

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/ErrorCode;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/ErrorCode;Ljava/lang/Exception;)V
    .locals 1
    .parameter "serverError"
    .parameter "e"

    .prologue
    .line 29
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/ErrorCode;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/ErrorCode;Ljava/lang/String;)V
    .locals 0
    .parameter "serverError"
    .parameter "message"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 36
    iput-object p2, p0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->detailMsg:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/RemoteError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    iget-object v0, p1, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 25
    iget-object v0, p1, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->detailMsg:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getCode()Lcom/htc/opensense/social/ErrorCode;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->code:Lcom/htc/opensense/social/ErrorCode;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->detailMsg:Ljava/lang/String;

    return-object v0
.end method

.method public storeError(Lcom/htc/opensense/social/RemoteError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->code:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p1, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 64
    iget-object v0, p0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->detailMsg:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 66
    return-void
.end method
