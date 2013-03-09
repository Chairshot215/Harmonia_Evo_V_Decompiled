.class Lcom/htc/fm/FMRadio$6;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMRadio;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1400
    iput-object p1, p0, Lcom/htc/fm/FMRadio$6;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/htc/fm/FMRadio$6;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getState()I
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$400(Lcom/htc/fm/FMRadio;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/htc/fm/FMRadio$6;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->seekUp()Z
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$500(Lcom/htc/fm/FMRadio;)Z

    .line 1405
    :cond_0
    return-void
.end method
