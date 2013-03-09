.class Lcom/htc/util/contacts/TMOClient$1$2;
.super Ljava/lang/Object;
.source "TMOClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/TMOClient$1;->sncdataRetrieved(Lcom/htc/clientprofileservice/Sncdata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/util/contacts/TMOClient$1;

.field final synthetic val$data:Lcom/htc/clientprofileservice/Sncdata;


# direct methods
.method constructor <init>(Lcom/htc/util/contacts/TMOClient$1;Lcom/htc/clientprofileservice/Sncdata;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/htc/util/contacts/TMOClient$1$2;->this$1:Lcom/htc/util/contacts/TMOClient$1;

    iput-object p2, p0, Lcom/htc/util/contacts/TMOClient$1$2;->val$data:Lcom/htc/clientprofileservice/Sncdata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    const-string v1, "TMOClient"

    const-string v2, "Calling updateMyCommunitySNCDatas in a backgroud thread..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$1$2;->this$1:Lcom/htc/util/contacts/TMOClient$1;

    iget-object v1, v1, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    iget-object v2, p0, Lcom/htc/util/contacts/TMOClient$1$2;->val$data:Lcom/htc/clientprofileservice/Sncdata;

    invoke-virtual {v2}, Lcom/htc/clientprofileservice/Sncdata;->getSnc()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/contacts/TMOClient;->updateMyCommunitySNCDatas(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TMOClient"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
