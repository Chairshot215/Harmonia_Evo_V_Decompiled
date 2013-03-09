.class public abstract Lcom/google/android/volley/DisplayMessageError;
.super Lcom/android/volley/VolleyError;
.source "DisplayMessageError.java"


# instance fields
.field mDisplayErrorHtml:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
    .locals 0
    .parameter "networkResponse"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Lcom/android/volley/NetworkResponse;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "displayErrorHtml"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/volley/DisplayMessageError;->mDisplayErrorHtml:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getDisplayErrorHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/volley/DisplayMessageError;->mDisplayErrorHtml:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayErrorMessage["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/volley/DisplayMessageError;->mDisplayErrorHtml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
