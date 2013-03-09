.class Lcom/android/htccontacts/ui/ContactsPreferencesActivity$6;
.super Ljava/lang/Object;
.source "ContactsPreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 606
    iput-object p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$6;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 608
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$6;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->checkedItems:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$6;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mSearchConfiguration:[Z
    invoke-static {v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$500(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$6;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    iget-object v2, v2, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->checkedItems:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$6;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->updateSearchConfigurationDisplayText()V

    .line 612
    return-void
.end method
