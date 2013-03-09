.class Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;
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
    name = "CategoryRightOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v2, v2, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "mContentView is null when click PlayAll"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$CategoryRightOnClickListener;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v2, v0, Lcom/htc/music/widget/MusicMaActivity;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v2}, Lcom/htc/music/widget/MusicMaActivity;->categoryRightAction()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "child frame not support categoryRightAction function, but we still enabled categoryRightAction button?"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v2, v0, Landroid/app/ActivityGroup;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/app/ActivityGroup;

    invoke-virtual {v0}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v2, v0, Lcom/htc/music/widget/MusicMaActivity;

    if-nez v2, :cond_3

    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "can\'t find match MusicMaActivity for categoryRightAction function"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    check-cast v2, Lcom/htc/music/widget/MusicMaActivity;

    invoke-virtual {v2}, Lcom/htc/music/widget/MusicMaActivity;->categoryRightAction()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "child frame not support categoryRightAction function, but we still enabled categoryRightAction button?"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "[MusicBrowserTabActivity]"

    const-string v3, "can\'t find match MusicMaActivity for categoryRightAction function"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
