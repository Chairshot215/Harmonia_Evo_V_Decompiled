.class Lcom/google/appinventor/components/runtime/Web$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->Get()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$1;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$1;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$1;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$1;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    const/4 v2, 0x0

    const/4 v3, 0x0

    #calls: Lcom/google/appinventor/components/runtime/Web;->performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Web;->access$700(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$1;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$1;->this$0:Lcom/google/appinventor/components/runtime/Web;

    const-string v3, "Get"

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$1;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$1;->this$0:Lcom/google/appinventor/components/runtime/Web;

    const-string v2, "Get"

    const/16 v3, 0x44d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$1;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
