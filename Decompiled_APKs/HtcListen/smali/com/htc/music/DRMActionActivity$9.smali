.class Lcom/htc/music/DRMActionActivity$9;
.super Ljava/lang/Object;
.source "DRMActionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/DRMActionActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DRMActionActivity;

.field final synthetic val$list:[I


# direct methods
.method constructor <init>(Lcom/htc/music/DRMActionActivity;[I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DRMActionActivity$9;->this$0:Lcom/htc/music/DRMActionActivity;

    iput-object p2, p0, Lcom/htc/music/DRMActionActivity$9;->val$list:[I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity$9;->this$0:Lcom/htc/music/DRMActionActivity;

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity$9;->val$list:[I

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracks(Landroid/content/Context;[I)V

    iget-object v0, p0, Lcom/htc/music/DRMActionActivity$9;->this$0:Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v0}, Lcom/htc/music/DRMActionActivity;->finish()V

    return-void
.end method
