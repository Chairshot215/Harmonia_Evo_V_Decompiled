.class Lcom/android/htccontacts/util/ContactsSetupWizard$3;
.super Ljava/lang/Object;
.source "ContactsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/ContactsSetupWizard;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/util/ContactsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$3;->this$0:Lcom/android/htccontacts/util/ContactsSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$3;->this$0:Lcom/android/htccontacts/util/ContactsSetupWizard;

    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mImportSIMContactsCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$200(Lcom/android/htccontacts/util/ContactsSetupWizard;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 402
    return-void
.end method
