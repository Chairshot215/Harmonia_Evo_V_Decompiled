.class Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$6;
.super Ljava/lang/Object;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->getPhoneTypeAccountWarningDialog(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/AccountWithDataSet;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

.field final synthetic val$target:Lcom/android/htccontacts/ui/EditContactActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4736
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$6;->this$0:Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    iput-object p2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$6;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 4738
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask$6;->val$target:Lcom/android/htccontacts/ui/EditContactActivity2;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4739
    .local v1, prefs:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4740
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    if-eqz v0, :cond_0

    .line 4741
    const-string v3, "show_add_phone_type_account_warning"

    if-nez p2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4742
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4744
    :cond_0
    return-void

    .line 4739
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4741
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
