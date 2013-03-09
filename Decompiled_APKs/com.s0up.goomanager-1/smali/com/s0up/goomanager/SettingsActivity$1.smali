.class Lcom/s0up/goomanager/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/SettingsActivity;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/SettingsActivity;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/SettingsActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/SettingsActivity$1;->this$0:Lcom/s0up/goomanager/SettingsActivity;

    iput-object p2, p0, Lcom/s0up/goomanager/SettingsActivity$1;->val$input:Landroid/widget/EditText;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 133
    iget-object v2, p0, Lcom/s0up/goomanager/SettingsActivity$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, value:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, folder:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/s0up/goomanager/SettingsActivity$1;->this$0:Lcom/s0up/goomanager/SettingsActivity;

    invoke-virtual {v2}, Lcom/s0up/goomanager/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " is not a valid directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/s0up/goomanager/SettingsActivity$1;->this$0:Lcom/s0up/goomanager/SettingsActivity;

    #getter for: Lcom/s0up/goomanager/SettingsActivity;->mDownloadPathPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/s0up/goomanager/SettingsActivity;->access$0(Lcom/s0up/goomanager/SettingsActivity;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lcom/s0up/goomanager/SettingsActivity$1;->this$0:Lcom/s0up/goomanager/SettingsActivity;

    #getter for: Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/s0up/goomanager/SettingsActivity;->access$1(Lcom/s0up/goomanager/SettingsActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "download_path"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    iget-object v2, p0, Lcom/s0up/goomanager/SettingsActivity$1;->this$0:Lcom/s0up/goomanager/SettingsActivity;

    #getter for: Lcom/s0up/goomanager/SettingsActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/s0up/goomanager/SettingsActivity;->access$1(Lcom/s0up/goomanager/SettingsActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    sput-object v1, Lcom/s0up/goomanager/GooManagerActivity;->DOWNLOAD_PATH:Ljava/lang/String;

    goto :goto_0
.end method
