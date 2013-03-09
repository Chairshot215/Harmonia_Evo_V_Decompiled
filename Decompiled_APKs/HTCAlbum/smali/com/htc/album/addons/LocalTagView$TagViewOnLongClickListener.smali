.class Lcom/htc/album/addons/LocalTagView$TagViewOnLongClickListener;
.super Ljava/lang/Object;
.source "LocalTagView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/LocalTagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagViewOnLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/LocalTagView;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/LocalTagView;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/album/addons/LocalTagView$TagViewOnLongClickListener;->this$0:Lcom/htc/album/addons/LocalTagView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView$TagViewOnLongClickListener;->this$0:Lcom/htc/album/addons/LocalTagView;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/LocalTagView;->onLongClickTagView(Landroid/view/View;)V

    .line 125
    const/4 v0, 0x0

    return v0
.end method
