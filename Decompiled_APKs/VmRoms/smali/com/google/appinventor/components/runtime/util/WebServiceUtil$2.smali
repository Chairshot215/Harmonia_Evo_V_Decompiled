.class Lcom/google/appinventor/components/runtime/util/WebServiceUtil$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommandReturningObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

.field final synthetic val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/WebServiceUtil;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebServiceUtil$2;->this$0:Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/WebServiceUtil$2;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebServiceUtil$2;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebServiceUtil$2;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebServiceUtil$2;->val$callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
