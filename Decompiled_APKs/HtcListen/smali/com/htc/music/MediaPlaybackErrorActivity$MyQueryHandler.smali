.class Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MediaPlaybackErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackErrorActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackErrorActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity$MyQueryHandler;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v0, p3}, Lcom/htc/music/MediaPlaybackErrorActivity;->init(Landroid/database/Cursor;)V

    return-void
.end method
