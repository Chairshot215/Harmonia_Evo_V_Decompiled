.class final Lcom/google/android/finsky/FinskyApp$1;
.super Ljava/lang/Object;
.source "FinskyApp.java"

# interfaces
.implements Lcom/android/volley/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/FinskyApp;->drain(Lcom/android/volley/RequestQueue;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$seq:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput p1, p0, Lcom/google/android/finsky/FinskyApp$1;->val$seq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/volley/Request;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    const/4 v2, 0x0

    .line 208
    instance-of v3, p1, Lcom/google/android/finsky/api/DfeRequest;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 209
    check-cast v0, Lcom/google/android/finsky/api/DfeRequest;

    .line 210
    .local v0, dfeRequest:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<*>;"
    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeRequest;->getAvoidBulkCancel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    .end local v0           #dfeRequest:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<*>;"
    :cond_0
    :goto_0
    return v2

    .line 213
    :cond_1
    instance-of v3, p1, Lcom/google/android/vending/remoting/api/VendingRequest;

    if-eqz v3, :cond_3

    move-object v1, p1

    .line 214
    check-cast v1, Lcom/google/android/vending/remoting/api/VendingRequest;

    .line 215
    .local v1, vendingRequest:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<**>;"
    invoke-virtual {v1}, Lcom/google/android/vending/remoting/api/VendingRequest;->getAvoidBulkCancel()Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    .end local v1           #vendingRequest:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<**>;"
    :cond_2
    invoke-virtual {p1}, Lcom/android/volley/Request;->getSequence()I

    move-result v3

    iget v4, p0, Lcom/google/android/finsky/FinskyApp$1;->val$seq:I

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 218
    :cond_3
    instance-of v3, p1, Lcom/google/android/finsky/billing/creditcard/EscrowRequest;

    if-eqz v3, :cond_2

    goto :goto_0
.end method
