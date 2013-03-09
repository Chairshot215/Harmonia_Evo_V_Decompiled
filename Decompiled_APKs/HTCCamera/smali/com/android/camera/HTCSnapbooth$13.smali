.class Lcom/android/camera/HTCSnapbooth$13;
.super Ljava/lang/Object;
.source "HTCSnapbooth.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCSnapbooth;->confirmDeletingCurrentImageFile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$13;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$13;->this$0:Lcom/android/camera/HTCSnapbooth;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/camera/HTCSnapbooth;->access$3002(Lcom/android/camera/HTCSnapbooth;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
