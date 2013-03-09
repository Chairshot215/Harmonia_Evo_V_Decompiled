.class Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;
.super Landroid/os/AsyncTask;
.source "GooManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/GooManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForUpdates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/GooManagerActivity;


# direct methods
.method private constructor <init>(Lcom/s0up/goomanager/GooManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s0up/goomanager/GooManagerActivity;Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;-><init>(Lcom/s0up/goomanager/GooManagerActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    const-class v3, Lcom/s0up/goomanager/RomUpdateReciever;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, i:Landroid/content/Intent;
    const-string v2, "manual_check"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    new-instance v1, Lcom/s0up/goomanager/RomUpdateReciever;

    invoke-direct {v1}, Lcom/s0up/goomanager/RomUpdateReciever;-><init>()V

    .line 312
    .local v1, receiver:Lcom/s0up/goomanager/RomUpdateReciever;
    iget-object v2, p0, Lcom/s0up/goomanager/GooManagerActivity$CheckForUpdates;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v2}, Lcom/s0up/goomanager/GooManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/s0up/goomanager/RomUpdateReciever;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 313
    const/4 v2, 0x0

    return-object v2
.end method
