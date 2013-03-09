.class final Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$5;
.super Ljava/lang/Object;
.source "ContactEventDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder;->prepareDialog(Landroid/content/Context;Landroid/app/Dialog;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$5;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 305
    iget-object v0, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 306
    return-void
.end method
