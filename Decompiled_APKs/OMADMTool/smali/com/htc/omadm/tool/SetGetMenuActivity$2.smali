.class Lcom/htc/omadm/tool/SetGetMenuActivity$2;
.super Ljava/lang/Object;
.source "SetGetMenuActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/tool/SetGetMenuActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/SetGetMenuActivity;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/SetGetMenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/omadm/tool/SetGetMenuActivity$2;->this$0:Lcom/htc/omadm/tool/SetGetMenuActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/omadm/tool/SetGetMenuActivity$2;->this$0:Lcom/htc/omadm/tool/SetGetMenuActivity;

    const-class v2, Lcom/htc/omadm/tool/GetInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, intentGetInfo:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/omadm/tool/SetGetMenuActivity$2;->this$0:Lcom/htc/omadm/tool/SetGetMenuActivity;

    invoke-virtual {v1, v0}, Lcom/htc/omadm/tool/SetGetMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    const/4 v1, 0x0

    return v1
.end method
