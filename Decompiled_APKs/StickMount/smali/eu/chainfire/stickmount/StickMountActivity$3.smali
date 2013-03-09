.class Leu/chainfire/stickmount/StickMountActivity$3;
.super Ljava/lang/Object;
.source "StickMountActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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


# direct methods
.method constructor <init>(Leu/chainfire/stickmount/StickMountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Leu/chainfire/stickmount/StickMountActivity$3;->this$0:Leu/chainfire/stickmount/StickMountActivity;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "eu.chainfire.stickmount.StickMountService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, svc:Landroid/content/Intent;
    const-string v1, "eu.chainfire.stickmount.ServiceAction"

    const-string v2, "unmountall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Leu/chainfire/stickmount/StickMountActivity$3;->this$0:Leu/chainfire/stickmount/StickMountActivity;

    invoke-virtual {v1, v0}, Leu/chainfire/stickmount/StickMountActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 184
    const/4 v1, 0x0

    return v1
.end method
