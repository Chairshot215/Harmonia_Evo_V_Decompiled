.class final Lcom/htc/music/widget/SharedAdapter$4;
.super Ljava/lang/Object;
.source "SharedAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;ILjava/lang/String;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/htc/music/widget/SharedAdapter;

.field final synthetic val$innerActivity:Landroid/app/Activity;

.field final synthetic val$innerAudioPath:Ljava/lang/String;

.field final synthetic val$innerMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/SharedAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    iput-object p2, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerAudioPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerMimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    invoke-virtual {v1, p2}, Lcom/htc/music/widget/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND_MSG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerAudioPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "[ShareAdapter]"

    const-string v2, "choose_listener..onClick()..Package is null... "

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/htc/music/widget/SharedAdapter$4;->val$innerAudioPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method
