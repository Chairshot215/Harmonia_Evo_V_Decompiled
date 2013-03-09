.class Lcom/android/settings/PSActivity$2;
.super Ljava/lang/Object;
.source "PSActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PSActivity;->ShowPSTriggerDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PSActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/PSActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/PSActivity$2;->this$0:Lcom/android/settings/PSActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.InternetPS.TriggerOK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, inta:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/PSActivity$2;->this$0:Lcom/android/settings/PSActivity;

    iget-object v1, v1, Lcom/android/settings/PSActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/PSActivity$2;->this$0:Lcom/android/settings/PSActivity;

    invoke-virtual {v1}, Lcom/android/settings/PSActivity;->finish()V

    .line 91
    return-void
.end method
