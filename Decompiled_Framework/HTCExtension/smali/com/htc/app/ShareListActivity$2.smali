.class Lcom/htc/app/ShareListActivity$2;
.super Ljava/lang/Object;
.source "ShareListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/ShareListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/ShareListActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/ShareListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/ShareListActivity$2;->this$0:Lcom/htc/app/ShareListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/ShareListActivity$2;->this$0:Lcom/htc/app/ShareListActivity;

    invoke-virtual {v0}, Lcom/htc/app/ShareListActivity;->finish()V

    return-void
.end method
