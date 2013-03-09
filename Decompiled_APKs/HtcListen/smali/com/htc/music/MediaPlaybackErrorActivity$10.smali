.class Lcom/htc/music/MediaPlaybackErrorActivity$10;
.super Ljava/lang/Object;
.source "MediaPlaybackErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/MediaPlaybackErrorActivity;->setPluginListListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackErrorActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$10;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    iput-object p2, p0, Lcom/htc/music/MediaPlaybackErrorActivity$10;->val$items:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity$10;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700d0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity$10;->val$items:[Ljava/lang/String;

    new-instance v3, Lcom/htc/music/MediaPlaybackErrorActivity$10$2;

    invoke-direct {v3, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$10$2;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity$10;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/htc/music/MediaPlaybackErrorActivity$10$1;

    invoke-direct {v3, p0}, Lcom/htc/music/MediaPlaybackErrorActivity$10$1;-><init>(Lcom/htc/music/MediaPlaybackErrorActivity$10;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    return-void
.end method
