.class Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;
.super Ljava/lang/Object;
.source "AccessControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/AccessControlActivity;->saveWhiteList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 198
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    invoke-virtual {v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->whitelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 200
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;
    invoke-static {v2}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$3(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->getClientData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 206
    :try_start_0
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    invoke-virtual {v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->save()V

    .line 207
    sget-object v2, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v2}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 208
    sget-object v2, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v2}, Lcom/googlecode/android/wifi/tether/TetherService;->reloadACRules()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v2}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$2(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    const v4, 0x7f070039

    invoke-virtual {v3, v4}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 224
    return-void

    .line 200
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/android/wifi/tether/data/ClientData;

    .line 201
    .local v1, tmpClientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    invoke-virtual {v1}, Lcom/googlecode/android/wifi/tether/data/ClientData;->isAccessAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->whitelist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    .end local v1           #tmpClientData:Lcom/googlecode/android/wifi/tether/data/ClientData;
    :catch_0
    move-exception v0

    .line 212
    .local v0, ex:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v2}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$2(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    const v4, 0x7f070036

    invoke-virtual {v3, v4}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    invoke-virtual {v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    invoke-virtual {v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->remove()Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v2}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$2(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$4;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    const v4, 0x7f070037

    invoke-virtual {v3, v4}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    goto :goto_1
.end method
