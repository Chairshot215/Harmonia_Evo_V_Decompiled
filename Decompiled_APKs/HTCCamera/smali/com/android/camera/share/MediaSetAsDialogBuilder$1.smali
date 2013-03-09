.class final Lcom/android/camera/share/MediaSetAsDialogBuilder$1;
.super Ljava/lang/Object;
.source "MediaSetAsDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/share/MediaSetAsDialogBuilder;->create(Landroid/content/Context;Lcom/android/camera/MediaInfo;)Lcom/android/camera/rotate/RotateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/android/camera/share/MediaSetAsListAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/camera/share/MediaSetAsListAdapter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/share/MediaSetAsDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaSetAsListAdapter;

    iput-object p2, p0, Lcom/android/camera/share/MediaSetAsDialogBuilder$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/share/MediaSetAsDialogBuilder$1;->val$adapter:Lcom/android/camera/share/MediaSetAsListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/camera/share/MediaSetAsListAdapter;->createIntent(I)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/share/MediaSetAsDialogBuilder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "MediaSetAsDialog"

    const-string v3, "Cannot start activity"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
