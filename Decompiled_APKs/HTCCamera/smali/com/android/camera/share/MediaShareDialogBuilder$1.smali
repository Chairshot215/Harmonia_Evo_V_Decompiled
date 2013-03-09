.class final Lcom/android/camera/share/MediaShareDialogBuilder$1;
.super Ljava/lang/Object;
.source "MediaShareDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/share/MediaShareDialogBuilder;->create(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/android/camera/rotate/RotateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lastShareAppNamePref:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/share/MediaShareListAdapter;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    iput-object p2, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$lastShareAppNamePref:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    invoke-virtual {v2}, Lcom/android/camera/share/MediaShareListAdapter;->isExpandable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    invoke-virtual {v2}, Lcom/android/camera/share/MediaShareListAdapter;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    invoke-virtual {v2}, Lcom/android/camera/share/MediaShareListAdapter;->expand()V

    check-cast p1, Lcom/android/camera/rotate/RotateDialog;

    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->postInvalidate()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/camera/share/MediaShareListAdapter;->createIntent(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$lastShareAppNamePref:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$context:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$lastShareAppNamePref:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaShareListAdapter;

    invoke-virtual {v4, p2}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfo(I)Lcom/android/camera/share/ExternalAppInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/share/MediaShareDialogBuilder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MediaShareDialog"

    const-string v3, "Cannot start activity"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
