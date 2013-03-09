.class final Lcom/htc/music/widget/SharedAdapter$3;
.super Ljava/lang/Object;
.source "SharedAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/htc/music/widget/SharedAdapter;

.field final synthetic val$innerActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/SharedAdapter;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/SharedAdapter$3;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    iput-object p2, p0, Lcom/htc/music/widget/SharedAdapter$3;->val$innerActivity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter$3;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    invoke-virtual {v1, p2}, Lcom/htc/music/widget/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "[ShareAdapter]"

    const-string v2, "choose_listener..onClick()..Package is null... "

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter$3;->val$innerActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
