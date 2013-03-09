.class Lcom/htc/WifiRouter/LanSettingFragment$6;
.super Ljava/lang/Object;
.source "LanSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/LanSettingFragment;->showResetDefaultDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/LanSettingFragment;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/LanSettingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/htc/WifiRouter/LanSettingFragment$6;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/WifiRouter/LanSettingFragment$6;->this$0:Lcom/htc/WifiRouter/LanSettingFragment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/WifiRouter/LanSettingFragment;->mResetDefaultDialogShowed:Z
    invoke-static {v0, v1}, Lcom/htc/WifiRouter/LanSettingFragment;->access$1102(Lcom/htc/WifiRouter/LanSettingFragment;Z)Z

    .line 331
    return-void
.end method
