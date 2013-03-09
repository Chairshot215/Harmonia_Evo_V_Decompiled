.class Lcom/htc/widget/HtcListItemComponent;
.super Landroid/widget/FrameLayout;
.source "HtcListItemComponent.java"


# instance fields
.field mIsRevert:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemComponent;->mIsRevert:Z

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemComponent;->mIsRevert:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemComponent;->mIsRevert:Z

    .line 19
    return-void
.end method


# virtual methods
.method setIsRevert(Z)V
    .locals 0
    .parameter "isRevert"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemComponent;->mIsRevert:Z

    .line 23
    return-void
.end method
