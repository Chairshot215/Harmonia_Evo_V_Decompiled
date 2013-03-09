.class Lcom/htc/CustomizationSetup/SIMChangedActivity$ParseDataTask;
.super Lcom/htc/CustomizationSetup/AsyncTask;
.source "SIMChangedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/CustomizationSetup/SIMChangedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseDataTask"
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
.field final synthetic this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;


# direct methods
.method private constructor <init>(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$ParseDataTask;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    invoke-direct {p0}, Lcom/htc/CustomizationSetup/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/CustomizationSetup/SIMChangedActivity;Lcom/htc/CustomizationSetup/SIMChangedActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/htc/CustomizationSetup/SIMChangedActivity$ParseDataTask;-><init>(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .parameter "params"

    .prologue
    .line 99
    const-string v2, "SIMChangedActivity"

    const-string v3, "ParseDataTask.doInBackground()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-wide/16 v0, 0x0

    .line 102
    .local v0, result:J
    iget-object v2, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$ParseDataTask;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    #calls: Lcom/htc/CustomizationSetup/SIMChangedActivity;->changeCustomizationSetup()V
    invoke-static {v2}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->access$000(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/CustomizationSetup/SIMChangedActivity$ParseDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 109
    const-string v0, "SIMChangedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParseDataTask.OnPostExecute(), result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity$ParseDataTask;->this$0:Lcom/htc/CustomizationSetup/SIMChangedActivity;

    #calls: Lcom/htc/CustomizationSetup/SIMChangedActivity;->postExecution()V
    invoke-static {v0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->access$100(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V

    .line 111
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/CustomizationSetup/SIMChangedActivity$ParseDataTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
