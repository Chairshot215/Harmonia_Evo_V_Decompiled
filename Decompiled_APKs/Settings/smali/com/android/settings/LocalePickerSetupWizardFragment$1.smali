.class Lcom/android/settings/LocalePickerSetupWizardFragment$1;
.super Ljava/lang/Object;
.source "LocalePickerSetupWizardFragment.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocalePickerSetupWizardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocalePickerSetupWizardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/LocalePickerSetupWizardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$1;->this$0:Lcom/android/settings/LocalePickerSetupWizardFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$1;->this$0:Lcom/android/settings/LocalePickerSetupWizardFragment;

    iput-object p1, v0, Lcom/android/settings/LocalePickerSetupWizardFragment;->mySelectlocale:Ljava/util/Locale;

    .line 95
    const-string v0, "LocalePickerSetupWizardFragment"

    const-string v1, "LocaleSelectionListener : mySelectlocale = locale"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method
