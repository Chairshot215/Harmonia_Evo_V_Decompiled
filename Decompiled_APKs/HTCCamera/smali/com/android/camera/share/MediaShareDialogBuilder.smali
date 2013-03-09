.class public final Lcom/android/camera/share/MediaShareDialogBuilder;
.super Ljava/lang/Object;
.source "MediaShareDialogBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/android/camera/rotate/RotateDialog;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/rotate/RotateDialog;"
        }
    .end annotation

    if-eqz p2, :cond_0

    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3, p2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v0, Lcom/android/camera/share/MediaShareListAdapter;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/camera/share/MediaShareListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/share/MediaShareDialogBuilder$1;

    invoke-direct {v1, v0, p2, p0}, Lcom/android/camera/share/MediaShareDialogBuilder$1;-><init>(Lcom/android/camera/share/MediaShareListAdapter;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v3, Lcom/android/camera/rotate/RotateDialog$Builder;

    invoke-direct {v3, p0}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x20c00a2

    invoke-virtual {v3, v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
