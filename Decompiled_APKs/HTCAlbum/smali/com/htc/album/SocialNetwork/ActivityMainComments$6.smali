.class Lcom/htc/album/SocialNetwork/ActivityMainComments$6;
.super Ljava/lang/Object;
.source "ActivityMainComments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/ActivityMainComments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ActivityMainComments;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ActivityMainComments;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments$6;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainComments;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainComments$6;->this$0:Lcom/htc/album/SocialNetwork/ActivityMainComments;

    invoke-virtual {v0, p1}, Lcom/htc/album/SocialNetwork/ActivityMainComments;->onListHeaderClick(Landroid/view/View;)V

    .line 593
    return-void
.end method
