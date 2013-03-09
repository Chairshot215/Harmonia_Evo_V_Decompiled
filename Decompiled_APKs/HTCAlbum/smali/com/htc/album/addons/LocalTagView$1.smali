.class Lcom/htc/album/addons/LocalTagView$1;
.super Ljava/lang/Object;
.source "LocalTagView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/LocalTagView;->onCreateDialog(Landroid/view/View;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/LocalTagView;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$viewFocused:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/LocalTagView;Landroid/view/View;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/htc/album/addons/LocalTagView$1;->this$0:Lcom/htc/album/addons/LocalTagView;

    iput-object p2, p0, Lcom/htc/album/addons/LocalTagView$1;->val$viewFocused:Landroid/view/View;

    iput-object p3, p0, Lcom/htc/album/addons/LocalTagView$1;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView$1;->val$viewFocused:Landroid/view/View;

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-nez p2, :cond_2

    .line 301
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView$1;->this$0:Lcom/htc/album/addons/LocalTagView;

    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView$1;->val$viewFocused:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/LocalTagView;->onTagDelete(Landroid/view/View;)V

    goto :goto_0

    .line 304
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/htc/album/addons/LocalTagView$1;->this$0:Lcom/htc/album/addons/LocalTagView;

    iget-object v1, p0, Lcom/htc/album/addons/LocalTagView$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/album/addons/LocalTagView$1;->val$viewFocused:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/LocalTagView;->onTagEdit(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0
.end method
