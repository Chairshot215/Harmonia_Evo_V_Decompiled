.class Lcom/googlecode/android/wifi/tether/AccessControlActivity$3;
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
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$3;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 115
    const-string v0, "TETHER -> AccessControlActivity"

    const-string v1, "Apply pressed ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$3;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #calls: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->saveWhiteList()V
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$6(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V

    .line 117
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$3;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->clientAdapter:Lcom/googlecode/android/wifi/tether/data/ClientAdapter;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$3(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)Lcom/googlecode/android/wifi/tether/data/ClientAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/googlecode/android/wifi/tether/data/ClientAdapter;->saveRequired:Z

    .line 118
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$3;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->toggleACFooter()V

    .line 119
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 120
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->reloadACRules()V

    .line 122
    :cond_0
    return-void
.end method
