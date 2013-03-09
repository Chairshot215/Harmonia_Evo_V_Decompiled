.class public abstract Lcom/discretix/drm/api/exceptions/DrmException;
.super Ljava/lang/Exception;
.source "DrmException.java"


# instance fields
.field private mMsg:Ljava/lang/String;

.field mResult:Lcom/discretix/drm/api/EDxDrmStatus;


# direct methods
.method constructor <init>(Lcom/discretix/drm/api/EDxDrmStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/discretix/drm/api/exceptions/DrmException;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    return-void
.end method

.method constructor <init>(Lcom/discretix/drm/api/EDxDrmStatus;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/discretix/drm/api/exceptions/DrmException;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    iput-object p2, p0, Lcom/discretix/drm/api/exceptions/DrmException;->mMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/discretix/drm/api/exceptions/DrmException;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/discretix/drm/api/exceptions/DrmException;->mMsg:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drm Error happened - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/discretix/drm/api/exceptions/DrmException;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResult()Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/exceptions/DrmException;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    return-object v0
.end method
