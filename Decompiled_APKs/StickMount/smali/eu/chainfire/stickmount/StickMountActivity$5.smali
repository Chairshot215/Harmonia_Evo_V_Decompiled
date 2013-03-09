.class Leu/chainfire/stickmount/StickMountActivity$5;
.super Ljava/lang/Object;
.source "StickMountActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/stickmount/StickMountActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/stickmount/StickMountActivity;

.field private final synthetic val$_this:Landroid/content/Context;


# direct methods
.method constructor <init>(Leu/chainfire/stickmount/StickMountActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Leu/chainfire/stickmount/StickMountActivity$5;->this$0:Leu/chainfire/stickmount/StickMountActivity;

    iput-object p2, p0, Leu/chainfire/stickmount/StickMountActivity$5;->val$_this:Landroid/content/Context;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 212
    const-string v0, "show_statusbar_notifications"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Leu/chainfire/stickmount/StickMountActivity$5;->val$_this:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/stickmount/Util;->mountDevices(Landroid/content/Context;Z)V

    .line 215
    :cond_0
    return-void
.end method
