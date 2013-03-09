.class Lcom/htc/omadm/tool/OMADMActivity$1;
.super Ljava/lang/Object;
.source "OMADMActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/tool/OMADMActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/OMADMActivity;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/OMADMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/omadm/tool/OMADMActivity$1;->this$0:Lcom/htc/omadm/tool/OMADMActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/omadm/tool/OMADMActivity$1;->this$0:Lcom/htc/omadm/tool/OMADMActivity;

    const-class v2, Lcom/htc/omadm/tool/SUCHeroSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, intentSUCHeroSetting:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/omadm/tool/OMADMActivity$1;->this$0:Lcom/htc/omadm/tool/OMADMActivity;

    invoke-virtual {v1, v0}, Lcom/htc/omadm/tool/OMADMActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    const/4 v1, 0x0

    return v1
.end method
