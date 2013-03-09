.class Lfr/clockwidget/lpsense/PreferencesActivity$2;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/clockwidget/lpsense/PreferencesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/clockwidget/lpsense/PreferencesActivity;


# direct methods
.method constructor <init>(Lfr/clockwidget/lpsense/PreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfr/clockwidget/lpsense/PreferencesActivity$2;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 216
    new-instance v0, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;

    iget-object v1, p0, Lfr/clockwidget/lpsense/PreferencesActivity$2;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;-><init>(Lfr/clockwidget/lpsense/PreferencesActivity;Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;)V

    invoke-static {v0}, Lfr/clockwidget/lpsense/PreferencesActivity;->access$10(Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;)V

    .line 217
    invoke-static {}, Lfr/clockwidget/lpsense/PreferencesActivity;->access$11()Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 218
    const/4 v0, 0x1

    return v0
.end method
