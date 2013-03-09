.class Lcom/htc/home/personalize/onlineskin/OnlineSkin$14;
.super Landroid/content/BroadcastReceiver;
.source "OnlineSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/onlineskin/OnlineSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$14;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x3

    .line 1297
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1298
    .local v3, strAction:Ljava/lang/String;
    const-string v4, "com.htc.home.personalize.storedatamanager.ACTION_MYCSEXCEPTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1299
    const-string v4, "storedata_type"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1300
    .local v2, nType:I
    if-eqz v2, :cond_1

    .line 1301
    const-string v4, "SkinPicker.OnlineSkin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    .end local v2           #nType:I
    :cond_0
    :goto_0
    return-void

    .line 1304
    .restart local v2       #nType:I
    :cond_1
    const-string v4, "error_code"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1305
    .local v1, errorCode:I
    if-ne v1, v6, :cond_2

    .line 1306
    const-string v4, "SkinPicker.OnlineSkin"

    const-string v5, "error code: MISSINGDEVICE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.cs.CSWebExceptionDB.DeviceDisconnected"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1308
    .local v0, csIntent:Landroid/content/Intent;
    const-string v4, "com.htc.cs"

    const-string v5, "com.htc.cs.activity.accountactivities.CSErrorHandlingDialog"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1310
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$14;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    const/16 v5, 0xc8

    invoke-virtual {v4, v0, v5}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1312
    .end local v0           #csIntent:Landroid/content/Intent;
    :cond_2
    const/4 v4, -0x4

    if-ne v1, v4, :cond_0

    .line 1313
    const-string v4, "SkinPicker.OnlineSkin"

    const-string v5, "error code: INVALIDCREDENTIALS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.cs.CSWebExceptionDB.RequireNewPassword"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1315
    .restart local v0       #csIntent:Landroid/content/Intent;
    const-string v4, "com.htc.cs"

    const-string v5, "com.htc.cs.activity.accountactivities.CSErrorHandlingDialog"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1317
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$14;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    const/16 v5, 0x64

    invoke-virtual {v4, v0, v5}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
