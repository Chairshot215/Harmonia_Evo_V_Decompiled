.class Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;
.super Ljava/lang/Object;
.source "ContactsPreferencesActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setListeners()V
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
    .line 449
    iput-object p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 452
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a039c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #calls: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->createSearchContactConfigDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$200(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Landroid/app/Dialog;

    move-result-object v0

    .line 456
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 457
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 472
    .end local v0           #d:Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mDisplayOnlyPhonesCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;
    invoke-static {v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$300(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;->toggle()V

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 463
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #getter for: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->mAddPhoneContactWarningCheckBox:Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;
    invoke-static {v1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$400(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemRestCheckBox;->toggle()V

    goto :goto_0

    .line 464
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0254

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 466
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->showDialog(I)V

    goto :goto_0

    .line 467
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0251

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$4;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->showDialog(I)V

    goto :goto_0
.end method
