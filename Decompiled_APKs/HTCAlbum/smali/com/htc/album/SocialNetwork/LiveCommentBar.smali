.class public Lcom/htc/album/SocialNetwork/LiveCommentBar;
.super Lcom/htc/album/modules/ui/widget/ControlBase;
.source "LiveCommentBar.java"


# instance fields
.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 3
    .parameter "nID"
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/modules/ui/widget/ControlBase;-><init>(ILandroid/content/Context;I)V

    .line 11
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/LiveCommentBar;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 17
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LiveCommentBar;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method
