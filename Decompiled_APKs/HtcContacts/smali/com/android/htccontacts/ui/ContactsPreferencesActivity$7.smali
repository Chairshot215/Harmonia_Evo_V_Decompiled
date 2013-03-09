.class Lcom/android/htccontacts/ui/ContactsPreferencesActivity$7;
.super Ljava/lang/Object;
.source "ContactsPreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->createDisplayOrderDialog()Landroid/app/Dialog;
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
    .line 626
    iput-object p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$7;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 628
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 629
    packed-switch p2, :pswitch_data_0

    .line 639
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$7;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setDisplayOrder()V

    .line 640
    return-void

    .line 631
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$7;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayNameType:I
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$602(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;I)I

    goto :goto_0

    .line 634
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$7;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayNameType:I
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$602(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;I)I

    goto :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
