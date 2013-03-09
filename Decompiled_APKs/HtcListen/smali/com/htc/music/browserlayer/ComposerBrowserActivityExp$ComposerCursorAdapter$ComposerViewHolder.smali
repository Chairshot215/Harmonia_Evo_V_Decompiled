.class Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$ComposerViewHolder;
.super Ljava/lang/Object;
.source "ComposerBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComposerViewHolder"
.end annotation


# instance fields
.field mImage:Landroid/widget/ImageView;

.field mPosition:I

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$ComposerViewHolder;->this$1:Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$ComposerViewHolder;->mTitle:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$ComposerViewHolder;->mImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivityExp$ComposerCursorAdapter$ComposerViewHolder;->mPosition:I

    return-void
.end method
