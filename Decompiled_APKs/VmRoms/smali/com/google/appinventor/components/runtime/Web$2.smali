.class Lcom/google/appinventor/components/runtime/Web$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->postTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$encoding:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$functionName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$text:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    const/4 v3, 0x0

    #calls: Lcom/google/appinventor/components/runtime/Web;->performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;)V
    invoke-static {v1, v2, v0, v3}, Lcom/google/appinventor/components/runtime/Web;->access$700(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$text:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$functionName:Ljava/lang/String;

    const/16 v3, 0x44e

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$encoding:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$functionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$2;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$functionName:Ljava/lang/String;

    const/16 v3, 0x44f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$text:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$2;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method
