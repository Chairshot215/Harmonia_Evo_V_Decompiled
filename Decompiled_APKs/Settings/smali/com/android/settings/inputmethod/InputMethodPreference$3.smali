.class Lcom/android/settings/inputmethod/InputMethodPreference$3;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$3;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$3;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$300(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference$3;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/settings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$400(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME\'s Settings Activity Not Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
