.class public final Lcom/android/camera/share/MediaSetAsDialogBuilder;
.super Ljava/lang/Object;
.source "MediaSetAsDialogBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/camera/MediaInfo;)Lcom/android/camera/rotate/RotateDialog;
    .locals 4

    new-instance v0, Lcom/android/camera/share/MediaSetAsListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/share/MediaSetAsListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/MediaInfo;)V

    new-instance v1, Lcom/android/camera/share/MediaSetAsDialogBuilder$1;

    invoke-direct {v1, v0, p0}, Lcom/android/camera/share/MediaSetAsDialogBuilder$1;-><init>(Lcom/android/camera/share/MediaSetAsListAdapter;Landroid/content/Context;)V

    new-instance v2, Lcom/android/camera/rotate/RotateDialog$Builder;

    invoke-direct {v2, p0}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x20c01f8

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v2

    return-object v2
.end method
