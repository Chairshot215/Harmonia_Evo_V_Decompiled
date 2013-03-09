.class Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$5;
.super Ljava/lang/Object;
.source "SingleSpellCheckerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onSubtypeButtonClicked_HTC(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$5;->this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 410
    if-nez p2, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$5;->this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    #getter for: Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;
    invoke-static {v0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->access$500(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    .line 416
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 417
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$5;->this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    #getter for: Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->mTsm:Landroid/view/textservice/TextServicesManager;
    invoke-static {v0}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->access$500(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$5;->this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    #getter for: Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->sSCI_CACHE:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;
    invoke-static {v1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->access$600(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$SCICache;->scs:[Landroid/view/textservice/SpellCheckerSubtype;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    goto :goto_0
.end method
