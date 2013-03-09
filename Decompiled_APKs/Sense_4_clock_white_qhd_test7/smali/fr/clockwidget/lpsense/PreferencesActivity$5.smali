.class Lfr/clockwidget/lpsense/PreferencesActivity$5;
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
    iput-object p1, p0, Lfr/clockwidget/lpsense/PreferencesActivity$5;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 262
    iget-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity$5;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->showDialog(I)V

    .line 263
    const/4 v0, 0x1

    return v0
.end method
