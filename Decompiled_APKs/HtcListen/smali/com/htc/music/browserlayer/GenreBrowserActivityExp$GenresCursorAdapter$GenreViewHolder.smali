.class Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$GenreViewHolder;
.super Ljava/lang/Object;
.source "GenreBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GenreViewHolder"
.end annotation


# instance fields
.field mImage:Landroid/widget/ImageView;

.field mPosition:I

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$GenreViewHolder;->this$1:Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$GenreViewHolder;->mTitle:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$GenreViewHolder;->mImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExp$GenresCursorAdapter$GenreViewHolder;->mPosition:I

    return-void
.end method
