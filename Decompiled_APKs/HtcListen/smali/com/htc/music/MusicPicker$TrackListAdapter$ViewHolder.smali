.class Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MusicPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPicker$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field buffer1:Landroid/database/CharArrayBuffer;

.field buffer2:[C

.field listItemText:Lcom/htc/widget/HtcListItem2LineText;

.field radio:Lcom/htc/widget/HtcListItemRadioButton;

.field final synthetic this$1:Lcom/htc/music/MusicPicker$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/MusicPicker$TrackListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPicker$TrackListAdapter$ViewHolder;->this$1:Lcom/htc/music/MusicPicker$TrackListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
