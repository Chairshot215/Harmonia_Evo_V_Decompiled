.class public Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
.super Lcom/htc/album/modules/ui/widget/BaseControlBar;
.source "GalleryFooterBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/BaseControlBar",
        "<",
        "Lcom/htc/widget/HtcFooter;",
        "Lcom/htc/album/modules/ui/widget/FooterButton;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEF_BUTTON_SIZE:I = 0x3

.field protected static final DEF_FOOTER_HEIGHT:I = 0x78

.field protected static final FOOTER_LAYOUT:I = 0x7f03000d

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;-><init>(Landroid/content/Context;I)V

    .line 60
    return-void
.end method

.method public static getHeight(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, -0x1

    .line 35
    .local v0, h:I
    invoke-static {}, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 45
    :pswitch_0
    const/16 v0, 0x78

    .line 49
    :goto_0
    return v0

    .line 37
    :pswitch_1
    const/16 v0, 0x50

    .line 38
    goto :goto_0

    .line 40
    :pswitch_2
    const/16 v0, 0x5a

    .line 41
    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    new-instance v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    const v1, 0x7f03000d

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v0

    return-object v0
.end method

.method public addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;
    .locals 6
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"

    .prologue
    const/4 v4, 0x0

    .line 92
    sparse-switch p3, :sswitch_data_0

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    :goto_0
    return-object v0

    .line 96
    :sswitch_0
    const v5, 0x7f0b010c

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    goto :goto_0

    .line 100
    :sswitch_1
    const v5, 0x7f0b0109

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    goto :goto_0

    .line 104
    :sswitch_2
    const v5, 0x7f0b011a

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    goto :goto_0

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public getMaxButtonCount()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x3

    return v0
.end method

.method public bridge synthetic onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 18
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v0

    return-object v0
.end method

.method public onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/FooterButton;
    .locals 4
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    .line 79
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, btnView:Lcom/htc/widget/HtcFooterButton;
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;II)V

    .line 82
    new-instance v1, Lcom/htc/album/modules/ui/widget/FooterButton;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;-><init>(Lcom/htc/widget/HtcFooterButton;III)V

    return-object v1
.end method
