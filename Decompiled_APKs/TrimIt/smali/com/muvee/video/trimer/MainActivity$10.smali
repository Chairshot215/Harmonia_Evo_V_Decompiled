.class Lcom/muvee/video/trimer/MainActivity$10;
.super Lcom/htc/app/HtcProgressDialog;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/video/trimer/MainActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muvee/video/trimer/MainActivity;


# direct methods
.method constructor <init>(Lcom/muvee/video/trimer/MainActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity$10;->this$0:Lcom/muvee/video/trimer/MainActivity;

    .line 309
    invoke-direct {p0, p2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public setView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/htc/app/HtcProgressDialog;->setView(Landroid/view/View;)V

    .line 320
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 321
    .local v1, viewGroup:Landroid/view/ViewGroup;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v2

    goto :goto_0
.end method
