.class public Lcom/google/android/finsky/api/model/DfeRateReview;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "DfeRateReview.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/DfeModel;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mResponseRecieved:Z


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "dfeApi"
    .parameter "docId"
    .parameter "reviewId"
    .parameter "rating"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p0

    move-object v5, p0

    .line 27
    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->rateReview(Ljava/lang/String;Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 28
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeRateReview;->mResponseRecieved:Z

    return v0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeRateReview;->mResponseRecieved:Z

    .line 46
    invoke-super {p0, p1}, Lcom/google/android/finsky/api/model/DfeModel;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeRateReview;->unregisterAll()V

    .line 48
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeRateReview;->mResponseRecieved:Z

    .line 38
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeRateReview;->notifyDataSetChanged()V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeRateReview;->unregisterAll()V

    .line 40
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeRateReview;->onResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)V

    return-void
.end method
