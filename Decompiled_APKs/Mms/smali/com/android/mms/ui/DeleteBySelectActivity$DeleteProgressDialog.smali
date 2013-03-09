.class Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog;
.super Landroid/app/Dialog;
.source "DeleteBySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeleteBySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteProgressDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteBySelectActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    .line 419
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 420
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x2

    .line 424
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 427
    .local v1, theWindow:Landroid/view/Window;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 428
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 429
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 431
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog;->setContentView(I)V

    .line 433
    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 435
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 436
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 437
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f00

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 438
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 439
    return-void
.end method
