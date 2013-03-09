.class final Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$4;
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
.field final synthetic val$EMAIL:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$4;->val$EMAIL:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    .line 266
    const-string v2, "mailto:%s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$4;->val$EMAIL:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, mailTo:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 268
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "type_mail"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    iget-object v2, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 270
    iget-object v2, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 271
    return-void
.end method
