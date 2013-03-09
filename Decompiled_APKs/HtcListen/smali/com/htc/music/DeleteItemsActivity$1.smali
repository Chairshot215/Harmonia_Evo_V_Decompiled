.class Lcom/htc/music/DeleteItemsActivity$1;
.super Ljava/lang/Object;
.source "DeleteItemsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/DeleteItemsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DeleteItemsActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/DeleteItemsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DeleteItemsActivity$1;->this$0:Lcom/htc/music/DeleteItemsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DeleteItemsActivity$1;->this$0:Lcom/htc/music/DeleteItemsActivity;

    invoke-virtual {v0}, Lcom/htc/music/DeleteItemsActivity;->finish()V

    return-void
.end method
