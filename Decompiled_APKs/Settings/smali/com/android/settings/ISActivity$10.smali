.class Lcom/android/settings/ISActivity$10;
.super Ljava/lang/Object;
.source "ISActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ISActivity;->showWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ISActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/ISActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings/ISActivity$10;->this$0:Lcom/android/settings/ISActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x1

    .line 286
    sget-boolean v1, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_TYPE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ISActivity$10;->this$0:Lcom/android/settings/ISActivity;

    iget-object v1, v1, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    const-string v2, "internet_sharing"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "is_type"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ISActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 289
    .local v0, mintent:Landroid/content/Intent;
    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    const-string v1, "is_dialog_code"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    iget-object v1, p0, Lcom/android/settings/ISActivity$10;->this$0:Lcom/android/settings/ISActivity;

    iget-object v1, v1, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 300
    .end local v0           #mintent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ISActivity$10;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v1}, Lcom/android/settings/ISActivity;->finish()V

    .line 301
    return-void

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ISActivity$10;->this$0:Lcom/android/settings/ISActivity;

    iget-object v1, v1, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 297
    iget-object v1, p0, Lcom/android/settings/ISActivity$10;->this$0:Lcom/android/settings/ISActivity;

    iget-object v1, v1, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 298
    sput-boolean v4, Lcom/android/settings/NSReceiver;->hasTethered:Z

    goto :goto_0
.end method
