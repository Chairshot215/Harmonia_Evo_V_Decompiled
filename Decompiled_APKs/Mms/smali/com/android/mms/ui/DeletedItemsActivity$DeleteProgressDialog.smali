.class Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;
.super Landroid/app/Dialog;
.source "DeletedItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeletedItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteProgressDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeletedItemsActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DeletedItemsActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    .line 414
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 415
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 438
    const-string v0, "DeletedItemsActivity"

    const-string v1, "dialog is cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x2

    .line 419
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 422
    .local v1, theWindow:Landroid/view/Window;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 423
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 424
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 426
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeletedItemsActivity$DeleteProgressDialog;->setContentView(I)V

    .line 428
    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 430
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 431
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 432
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f00

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 433
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 434
    return-void
.end method
