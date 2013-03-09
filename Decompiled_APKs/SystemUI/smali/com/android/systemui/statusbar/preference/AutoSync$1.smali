.class Lcom/android/systemui/statusbar/preference/AutoSync$1;
.super Ljava/lang/Object;
.source "AutoSync.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/AutoSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/AutoSync;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/AutoSync;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/preference/AutoSync;->mbAutoSyncSetting:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preference/AutoSync;->setAutoSyncSetting(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    #calls: Lcom/android/systemui/statusbar/preference/AutoSync;->updateUI()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/AutoSync;->access$000(Lcom/android/systemui/statusbar/preference/AutoSync;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/AutoSync;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/AutoSync$1;->toggleSettings()V

    return v1
.end method

.method public toggleSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/AutoSync$1;->this$0:Lcom/android/systemui/statusbar/preference/AutoSync;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/AutoSync;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
