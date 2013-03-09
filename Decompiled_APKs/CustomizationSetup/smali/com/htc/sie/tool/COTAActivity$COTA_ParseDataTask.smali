.class Lcom/htc/sie/tool/COTAActivity$COTA_ParseDataTask;
.super Lcom/htc/CustomizationSetup/AsyncTask;
.source "COTAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sie/tool/COTAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "COTA_ParseDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/CustomizationSetup/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sie/tool/COTAActivity;


# direct methods
.method private constructor <init>(Lcom/htc/sie/tool/COTAActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/sie/tool/COTAActivity$COTA_ParseDataTask;->this$0:Lcom/htc/sie/tool/COTAActivity;

    invoke-direct {p0}, Lcom/htc/CustomizationSetup/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sie/tool/COTAActivity;Lcom/htc/sie/tool/COTAActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/sie/tool/COTAActivity$COTA_ParseDataTask;-><init>(Lcom/htc/sie/tool/COTAActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .parameter "params"

    .prologue
    .line 54
    const-string v3, "COTAActivity"

    const-string v4, "COTA_ParseDataTask.doInBackground()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-wide/16 v1, 0x0

    .line 66
    .local v1, result:J
    :try_start_0
    const-string v3, "COTAActivity"

    const-string v4, "[COTA_ParseDataTask]Before COTA_changeCustomizationSetup"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v3, p0, Lcom/htc/sie/tool/COTAActivity$COTA_ParseDataTask;->this$0:Lcom/htc/sie/tool/COTAActivity;

    #calls: Lcom/htc/sie/tool/COTAActivity;->COTA_changeCustomizationSetup()V
    invoke-static {v3}, Lcom/htc/sie/tool/COTAActivity;->access$000(Lcom/htc/sie/tool/COTAActivity;)V

    .line 68
    const-string v3, "COTAActivity"

    const-string v4, "[COTA_ParseDataTask]After COTA_changeCustomizationSetup"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "COTAActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[COTA_ParseDataTask]Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sie/tool/COTAActivity$COTA_ParseDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 78
    const-string v0, "COTAActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COTA_ParseDataTask.OnPostExecute(), result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/htc/sie/tool/COTAActivity$COTA_ParseDataTask;->this$0:Lcom/htc/sie/tool/COTAActivity;

    #calls: Lcom/htc/sie/tool/COTAActivity;->postExecution()V
    invoke-static {v0}, Lcom/htc/sie/tool/COTAActivity;->access$100(Lcom/htc/sie/tool/COTAActivity;)V

    .line 80
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sie/tool/COTAActivity$COTA_ParseDataTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
