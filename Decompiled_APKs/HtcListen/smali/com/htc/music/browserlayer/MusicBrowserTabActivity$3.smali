.class Lcom/htc/music/browserlayer/MusicBrowserTabActivity$3;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$3;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_1

    instance-of v2, p1, Lcom/htc/widget/HeaderBarImage;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->isBubbleWindowShow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->show()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    instance-of v2, p1, Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->isBubbleWindowShow()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->show()V

    goto :goto_0

    :cond_3
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "non-HeaderBarImage shouldn\'t use this ClickListener!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
