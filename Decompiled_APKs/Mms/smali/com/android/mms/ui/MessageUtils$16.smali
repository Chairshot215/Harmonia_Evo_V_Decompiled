.class final Lcom/android/mms/ui/MessageUtils$16;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 4070
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$16;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4072
    const-string v0, "MessageUtils"

    const-string v1, "click negbutton to cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4075
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$16;->val$context:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v0, :cond_1

    .line 4076
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$16;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 4080
    :cond_0
    :goto_0
    return-void

    .line 4077
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$16;->val$context:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/AlertDialogActivity;

    if-eqz v0, :cond_0

    .line 4078
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$16;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/AlertDialogActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/AlertDialogActivity;->finish()V

    goto :goto_0
.end method
