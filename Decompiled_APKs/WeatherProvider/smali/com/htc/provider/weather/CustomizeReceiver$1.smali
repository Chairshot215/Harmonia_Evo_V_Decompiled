.class Lcom/htc/provider/weather/CustomizeReceiver$1;
.super Ljava/lang/Object;
.source "CustomizeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/provider/weather/CustomizeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/provider/weather/CustomizeReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/provider/weather/CustomizeReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/provider/weather/CustomizeReceiver$1;->this$0:Lcom/htc/provider/weather/CustomizeReceiver;

    iput-object p2, p0, Lcom/htc/provider/weather/CustomizeReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/provider/weather/CustomizeReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 37
    const-string v7, "Provider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/provider/weather/CustomizeReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/htc/provider/weather/CustomizeReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v3, folder:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 40
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, filename:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    .line 42
    .local v6, ret:Z
    const-string v8, "Provider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleting db file "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v6, :cond_0

    const-string v7, " successful"

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42
    :cond_0
    const-string v7, " failed"

    goto :goto_1

    .line 44
    .end local v1           #f:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    .end local v6           #ret:Z
    :cond_1
    invoke-static {}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->clearDbMapping()V

    .line 45
    return-void
.end method
