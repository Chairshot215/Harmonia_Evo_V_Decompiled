.class Lcom/htc/widget/HtcListItemComponent;
.super Landroid/widget/FrameLayout;
.source "HtcListItemComponent.java"


# instance fields
.field mIsRevert:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemComponent;->mIsRevert:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemComponent;->mIsRevert:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListItemComponent;->mIsRevert:Z

    return-void
.end method


# virtual methods
.method setIsRevert(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListItemComponent;->mIsRevert:Z

    return-void
.end method
