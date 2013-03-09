.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2$1;
.super Ljava/lang/Object;
.source "HtcEncryptionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2$1;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2$1;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;

    iget-object v1, v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2$1;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;

    iget-object v1, v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 127
    return-void
.end method
