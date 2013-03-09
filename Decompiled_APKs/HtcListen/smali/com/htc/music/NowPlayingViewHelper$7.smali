.class Lcom/htc/music/NowPlayingViewHelper$7;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/NowPlayingViewHelper;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$7;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$7;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$7;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$900(Lcom/htc/music/NowPlayingViewHelper;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$7;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mSelectedPosition:I
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper;->access$1000(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    return-void
.end method
