.class Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$2;
.super Ljava/lang/Object;
.source "HtcAbstractAppAssociationsPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$2;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$2;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    iget-object v1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$2;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    #calls: Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I
    invoke-static {v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$400(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)I

    move-result v1

    #setter for: Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$502(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;I)I

    .line 431
    iget-object v0, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$2;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 433
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 434
    return-void
.end method
