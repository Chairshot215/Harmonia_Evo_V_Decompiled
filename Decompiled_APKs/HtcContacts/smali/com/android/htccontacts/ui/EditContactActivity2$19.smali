.class Lcom/android/htccontacts/ui/EditContactActivity2$19;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2;->createCustomDialog(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

.field final synthetic val$customType:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7068
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$19;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2;

    iput-object p2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$19;->val$customType:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 7070
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$19;->val$customType:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 7071
    .local v0, customText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7077
    :cond_0
    return-void
.end method
