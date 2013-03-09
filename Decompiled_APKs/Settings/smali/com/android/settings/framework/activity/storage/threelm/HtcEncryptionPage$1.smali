.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage$1;
.super Ljava/lang/Object;
.source "HtcEncryptionPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 66
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 67
    return-void
.end method
