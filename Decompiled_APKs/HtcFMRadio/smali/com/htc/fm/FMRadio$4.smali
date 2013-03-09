.class Lcom/htc/fm/FMRadio$4;
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
    .line 1389
    iput-object p1, p0, Lcom/htc/fm/FMRadio$4;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/htc/fm/FMRadio$4;->this$0:Lcom/htc/fm/FMRadio;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadio;->finish()V

    .line 1392
    return-void
.end method
