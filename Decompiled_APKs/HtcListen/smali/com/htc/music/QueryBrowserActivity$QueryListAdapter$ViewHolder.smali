.class Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field listItemIcon:Landroid/widget/ImageView;

.field listItemText:Lcom/htc/widget/HtcListItem2LineText;

.field final synthetic this$0:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->this$0:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
