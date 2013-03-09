.class Lcom/htc/fm/FMRadio$22;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2768
    iput-object p1, p0, Lcom/htc/fm/FMRadio$22;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/htc/fm/FMRadio$22;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2771
    return-void
.end method
