.class final Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$3;
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
.field final synthetic val$NUMBER:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$3;->val$NUMBER:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    iget-object v3, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$3;->val$NUMBER:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 227
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    iget-object v1, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 229
    return-void
.end method
