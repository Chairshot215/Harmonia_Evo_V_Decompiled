.class Lcom/android/settings/ISActivity$3;
.super Ljava/lang/Object;
.source "ISActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ISActivity;->showMobileDialog()V
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
    .line 141
    iput-object p1, p0, Lcom/android/settings/ISActivity$3;->this$0:Lcom/android/settings/ISActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 144
    sget-boolean v1, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-eqz v1, :cond_1

    .line 146
    const-string v1, "NetSharing_ISActivity"

    const-string v2, "setNetSharing(true)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/android/settings/ISActivity$3;->this$0:Lcom/android/settings/ISActivity;

    iget-object v1, v1, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/ISActivity$3;->this$0:Lcom/android/settings/ISActivity;

    iget-object v1, v1, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/settings/NetSharingEnabler;->setNetSharing(ZLandroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 150
    sput-boolean v3, Lcom/android/settings/NSReceiver;->hasTethered:Z

    .line 154
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, mintent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/ISActivity$3;->this$0:Lcom/android/settings/ISActivity;

    iget-object v1, v1, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/ISActivity$3;->this$0:Lcom/android/settings/ISActivity;

    invoke-virtual {v1}, Lcom/android/settings/ISActivity;->finish()V

    .line 158
    return-void

    .line 153
    .end local v0           #mintent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/ISActivity$3;->this$0:Lcom/android/settings/ISActivity;

    iget-object v2, v2, Lcom/android/settings/ISActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    goto :goto_0
.end method
