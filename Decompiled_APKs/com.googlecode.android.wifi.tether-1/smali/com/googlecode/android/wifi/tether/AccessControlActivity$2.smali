.class Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;
.super Ljava/lang/Object;
.source "AccessControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/AccessControlActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 81
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->buttonAC:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$1(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    const-string v0, "TETHER -> AccessControlActivity"

    const-string v1, "Disable pressed ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->remove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$2(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$3(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #calls: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getCurrentClientData()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$4(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->refreshData(Ljava/util/ArrayList;)V

    .line 86
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 87
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->reloadACRules()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$2(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "acpref"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 90
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$2(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #calls: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->toggleACHeader()V
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$5(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    const-string v0, "TETHER -> AccessControlActivity"

    const-string v1, "Enable pressed ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->touch()V

    .line 98
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$2(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    const v2, 0x7f070032

    invoke-virtual {v1, v2}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$3(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #calls: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->getCurrentClientData()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$4(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->refreshData(Ljava/util/ArrayList;)V

    .line 100
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 101
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->reloadACRules()V

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$2(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "acpref"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$2(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$2;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #calls: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->toggleACHeader()V
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$5(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method
