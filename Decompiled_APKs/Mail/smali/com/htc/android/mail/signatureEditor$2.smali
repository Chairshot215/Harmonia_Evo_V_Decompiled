.class Lcom/htc/android/mail/signatureEditor$2;
.super Ljava/lang/Object;
.source "signatureEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/signatureEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/signatureEditor;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/signatureEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/android/mail/signatureEditor$2;->this$0:Lcom/htc/android/mail/signatureEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/htc/android/mail/signatureEditor$2;->this$0:Lcom/htc/android/mail/signatureEditor;

    iget-object v1, p0, Lcom/htc/android/mail/signatureEditor$2;->this$0:Lcom/htc/android/mail/signatureEditor;

    const v3, 0x7f09017c

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/signatureEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/htc/android/mail/signatureEditor;->sig:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/htc/android/mail/signatureEditor$2;->this$0:Lcom/htc/android/mail/signatureEditor;

    invoke-virtual {v1}, Lcom/htc/android/mail/signatureEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 69
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/signatureEditor$2;->this$0:Lcom/htc/android/mail/signatureEditor;

    iget-object v2, p0, Lcom/htc/android/mail/signatureEditor$2;->this$0:Lcom/htc/android/mail/signatureEditor;

    iget-object v2, v2, Lcom/htc/android/mail/signatureEditor;->sig:Ljava/lang/String;

    #calls: Lcom/htc/android/mail/signatureEditor;->saveAccountSignature(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/signatureEditor;->access$000(Lcom/htc/android/mail/signatureEditor;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/htc/android/mail/signatureEditor$2;->this$0:Lcom/htc/android/mail/signatureEditor;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/htc/android/mail/signatureEditor;->setResult(ILandroid/content/Intent;)V

    .line 71
    iget-object v1, p0, Lcom/htc/android/mail/signatureEditor$2;->this$0:Lcom/htc/android/mail/signatureEditor;

    invoke-virtual {v1}, Lcom/htc/android/mail/signatureEditor;->finish()V

    .line 72
    return-void
.end method
