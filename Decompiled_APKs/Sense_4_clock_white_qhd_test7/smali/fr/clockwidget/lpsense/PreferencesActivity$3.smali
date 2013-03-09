.class Lfr/clockwidget/lpsense/PreferencesActivity$3;
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
    iput-object p1, p0, Lfr/clockwidget/lpsense/PreferencesActivity$3;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 232
    iget-object v0, p0, Lfr/clockwidget/lpsense/PreferencesActivity$3;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 233
    const/4 v0, 0x1

    return v0
.end method
