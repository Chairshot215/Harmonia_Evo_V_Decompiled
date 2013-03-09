.class Leu/chainfire/stickmount/StickMountActivity$4;
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
    iput-object p1, p0, Leu/chainfire/stickmount/StickMountActivity$4;->this$0:Leu/chainfire/stickmount/StickMountActivity;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, i:Landroid/content/Intent;
    const-string v1, "market://search?q=pub:Chainfire"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Leu/chainfire/stickmount/StickMountActivity$4;->this$0:Leu/chainfire/stickmount/StickMountActivity;

    invoke-virtual {v1, v0}, Leu/chainfire/stickmount/StickMountActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    iget-object v1, p0, Leu/chainfire/stickmount/StickMountActivity$4;->this$0:Leu/chainfire/stickmount/StickMountActivity;

    invoke-virtual {v1}, Leu/chainfire/stickmount/StickMountActivity;->finish()V

    .line 203
    const/4 v1, 0x0

    return v1
.end method
