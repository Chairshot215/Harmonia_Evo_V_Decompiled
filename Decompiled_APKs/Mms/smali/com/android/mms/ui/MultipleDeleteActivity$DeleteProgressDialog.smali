.class Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog;
.super Landroid/app/Dialog;
.source "MultipleDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteProgressDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    .line 604
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 605
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 628
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x2

    .line 609
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 611
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 612
    .local v1, theWindow:Landroid/view/Window;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 613
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 614
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 616
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog;->setContentView(I)V

    .line 618
    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 620
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 621
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 622
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f00

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 623
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 624
    return-void
.end method
