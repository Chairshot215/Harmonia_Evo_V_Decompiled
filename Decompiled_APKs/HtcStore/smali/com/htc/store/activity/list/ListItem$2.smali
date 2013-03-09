.class Lcom/htc/store/activity/list/ListItem$2;
.super Ljava/lang/Object;
.source "ListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/list/ListItem;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/list/ListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/htc/store/activity/list/ListItem$2;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$2;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->doRefresh()V
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$200(Lcom/htc/store/activity/list/ListItem;)V

    .line 429
    return-void
.end method
