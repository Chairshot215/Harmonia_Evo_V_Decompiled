.class final Lcom/android/mms/ui/MessageUtils$15;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 4084
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$15;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 4087
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$15;->val$context:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v0, :cond_1

    .line 4088
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$15;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 4095
    :cond_0
    :goto_0
    return-void

    .line 4089
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$15;->val$context:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/AlertDialogActivity;

    if-eqz v0, :cond_0

    .line 4090
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$15;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/AlertDialogActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/AlertDialogActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4092
    :catch_0
    move-exception v0

    goto :goto_0
.end method
