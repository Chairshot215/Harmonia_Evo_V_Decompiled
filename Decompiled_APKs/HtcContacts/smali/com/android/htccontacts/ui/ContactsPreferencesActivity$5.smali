.class Lcom/android/htccontacts/ui/ContactsPreferencesActivity$5;
.super Ljava/lang/Object;
.source "ContactsPreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->createSearchContactConfigDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$5;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$5;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    iget-object v0, v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->checkedItems:[Z

    aput-boolean p3, v0, p2

    .line 602
    return-void
.end method
