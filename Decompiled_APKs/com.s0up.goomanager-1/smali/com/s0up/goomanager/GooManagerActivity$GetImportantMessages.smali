.class Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages;
.super Landroid/os/AsyncTask;
.source "GooManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/GooManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetImportantMessages"
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
    .line 375
    iput-object p1, p0, Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s0up/goomanager/GooManagerActivity;Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages;-><init>(Lcom/s0up/goomanager/GooManagerActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 391
    new-instance v1, Lcom/s0up/goomanager/WebRequest;

    invoke-direct {v1}, Lcom/s0up/goomanager/WebRequest;-><init>()V

    const-string v2, "http://goo.im/message"

    invoke-virtual {v1, v2}, Lcom/s0up/goomanager/WebRequest;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    :cond_0
    const-string v0, "FAIL"

    .line 395
    .end local v0           #result:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 377
    const-string v0, "FAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 379
    const-string v1, "Important message"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 381
    const-string v1, "Continue"

    new-instance v2, Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages$1;

    invoke-direct {v2, p0}, Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages$1;-><init>(Lcom/s0up/goomanager/GooManagerActivity$GetImportantMessages;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 388
    :cond_0
    return-void
.end method
