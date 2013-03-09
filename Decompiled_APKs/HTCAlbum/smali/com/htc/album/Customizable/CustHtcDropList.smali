.class public Lcom/htc/album/Customizable/CustHtcDropList;
.super Ljava/lang/Object;
.source "CustHtcDropList.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/htc/album/Customizable/CustHtcDropList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/Customizable/CustHtcDropList;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTabContentMargin(Landroid/content/Context;Landroid/widget/FrameLayout;IZ)V
    .locals 4
    .parameter "context"
    .parameter "frameLayout"
    .parameter "nHeight"
    .parameter "bEnableMargin"

    .prologue
    const/4 v2, 0x1

    .line 17
    if-nez p1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    if-ne v2, p3, :cond_3

    .line 25
    if-eqz p2, :cond_2

    .line 26
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 30
    :goto_1
    sget-object v1, Lcom/htc/album/Customizable/CustHtcDropList;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][CustHtcDropList][setTabContentMargin]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_2
    invoke-static {p0, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 33
    :cond_3
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method
