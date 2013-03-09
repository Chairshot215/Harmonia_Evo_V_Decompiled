.class Lcom/google/appinventor/components/runtime/TinyWebDB$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyWebDB;->postGetValue(Ljava/lang/String;)V
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
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    #getter for: Lcom/google/appinventor/components/runtime/TinyWebDB;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/TinyWebDB;->access$100(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->onSuccess(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    #getter for: Lcom/google/appinventor/components/runtime/TinyWebDB;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/TinyWebDB;->access$100(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/TinyWebDB$4$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/TinyWebDB$4$1;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, ""

    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    #getter for: Lcom/google/appinventor/components/runtime/TinyWebDB;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/TinyWebDB;->access$100(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    #getter for: Lcom/google/appinventor/components/runtime/TinyWebDB;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/TinyWebDB;->access$100(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method
