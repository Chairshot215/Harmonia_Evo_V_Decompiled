.class Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;
.super Landroid/app/Dialog;
.source "MessageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteProgressDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageViewActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageViewActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1893
    iput-object p1, p0, Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    .line 1894
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1895
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 1922
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 1935
    monitor-enter p0

    .line 1939
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1945
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 1946
    return-void

    .line 1941
    :catch_0
    move-exception v0

    .line 1943
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1945
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x2

    .line 1901
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1904
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1905
    .local v1, theWindow:Landroid/view/Window;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 1906
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 1907
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 1909
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;->setContentView(I)V

    .line 1911
    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1912
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1914
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1915
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f00

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1916
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1917
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1928
    const/4 v0, 0x0

    return v0
.end method
