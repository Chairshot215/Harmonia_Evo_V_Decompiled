.class Lcom/google/android/finsky/billing/challenge/ClientLoginApi$1;
.super Ljava/lang/Object;
.source "ClientLoginApi.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->validateUser(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/android/volley/NetworkResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

.field final synthetic val$listener:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/challenge/ClientLoginApi;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$1;->this$0:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

    iput-object p2, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$1;->val$listener:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/android/volley/NetworkResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 66
    iget v0, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 67
    const-string v0, "Success response called with %d code"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$1;->val$listener:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;->onAuthSuccess()V

    .line 71
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    check-cast p1, Lcom/android/volley/NetworkResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$1;->onResponse(Lcom/android/volley/NetworkResponse;)V

    return-void
.end method
