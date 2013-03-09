.class Lcom/google/android/finsky/activities/FirstRunActivity$2;
.super Ljava/lang/Object;
.source "FirstRunActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/FirstRunActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/FirstRunActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/FirstRunActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/finsky/activities/FirstRunActivity$2;->this$0:Lcom/google/android/finsky/activities/FirstRunActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 65
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->viewedFirstRunDialog:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 66
    iget-object v1, p0, Lcom/google/android/finsky/activities/FirstRunActivity$2;->this$0:Lcom/google/android/finsky/activities/FirstRunActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->setResult(I)V

    .line 67
    iget-object v1, p0, Lcom/google/android/finsky/activities/FirstRunActivity$2;->this$0:Lcom/google/android/finsky/activities/FirstRunActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/FirstRunActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "continue_intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 68
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/google/android/finsky/activities/FirstRunActivity$2;->this$0:Lcom/google/android/finsky/activities/FirstRunActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/FirstRunActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/FirstRunActivity$2;->this$0:Lcom/google/android/finsky/activities/FirstRunActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 71
    :cond_0
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/google/android/finsky/activities/FirstRunActivity$2;->this$0:Lcom/google/android/finsky/activities/FirstRunActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/FirstRunActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    iget-object v1, p0, Lcom/google/android/finsky/activities/FirstRunActivity$2;->this$0:Lcom/google/android/finsky/activities/FirstRunActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/FirstRunActivity;->finish()V

    .line 75
    return-void
.end method
