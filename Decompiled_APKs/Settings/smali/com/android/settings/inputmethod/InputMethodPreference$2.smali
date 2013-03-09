.class Lcom/android/settings/inputmethod/InputMethodPreference$2;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

.field final synthetic val$imiId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodPreference;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodPreference$2;->val$imiId:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "arg0"

    .prologue
    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "input_method_id"

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference$2;->val$imiId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$300(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    move-result-object v1

    const-class v2, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 141
    const/4 v1, 0x1

    return v1
.end method
