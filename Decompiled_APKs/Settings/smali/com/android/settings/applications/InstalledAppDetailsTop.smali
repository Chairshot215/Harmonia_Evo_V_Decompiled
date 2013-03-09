.class public Lcom/android/settings/applications/InstalledAppDetailsTop;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "InstalledAppDetailsTop.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 10
    .local v0, modIntent:Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    return-object v0
.end method
