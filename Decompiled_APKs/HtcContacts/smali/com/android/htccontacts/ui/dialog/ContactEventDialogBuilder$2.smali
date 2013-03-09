.class final Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$2;
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

.field final synthetic val$contactId:J

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$displayName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/CharSequence;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$2;->val$NUMBER:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$2;->val$contactId:J

    iput-object p4, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$2;->val$displayName:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 207
    iget-object v2, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$2;->val$NUMBER:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/util/phone/DialUtils;->makeDialUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 208
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "personId"

    iget-wide v3, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$2;->val$contactId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 210
    const-string v2, "name"

    iget-object v3, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$2;->val$displayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 211
    invoke-static {v0}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    .line 212
    iget-object v2, p0, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 213
    return-void
.end method
