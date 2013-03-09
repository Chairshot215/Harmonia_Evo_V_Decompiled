.class Lcom/htc/android/epst/ListItemsActivity$13;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$13;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 1334
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$13;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mPassword:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$1300(Lcom/htc/android/epst/ListItemsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1335
    const-string v0, "ListItemsActivity"

    const-string v1, "mPassword.length() ==0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$13;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0, v3}, Lcom/htc/android/epst/ListItemsActivity;->authenticateResult(Z)V

    .line 1356
    :goto_0
    return-void

    .line 1339
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1340
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$13;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/ListItemsActivity;->showDialog(I)V

    .line 1341
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$13;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$000(Lcom/htc/android/epst/ListItemsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ListItemsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPassword:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/epst/ListItemsActivity$13;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mPassword:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/epst/ListItemsActivity;->access$1300(Lcom/htc/android/epst/ListItemsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_1
    new-instance v0, Lcom/htc/android/epst/ListItemsActivity$ValidationTask;

    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$13;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/android/epst/ListItemsActivity$ValidationTask;-><init>(Lcom/htc/android/epst/ListItemsActivity;Lcom/htc/android/epst/ListItemsActivity$1;)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/ListItemsActivity$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
