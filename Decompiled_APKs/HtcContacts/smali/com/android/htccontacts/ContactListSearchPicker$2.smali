.class Lcom/android/htccontacts/ContactListSearchPicker$2;
.super Ljava/lang/Object;
.source "ContactListSearchPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactListSearchPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactListSearchPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactListSearchPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker$2;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$2;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v1, p0, Lcom/android/htccontacts/ContactListSearchPicker$2;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/htccontacts/ContactListSearchPicker;->access$300(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactListSearchPicker;->launchIME(Landroid/widget/EditText;)V

    .line 593
    return-void
.end method
