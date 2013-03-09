.class Lcom/htc/fm/FMRadio$3;
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
    .line 1379
    iput-object p1, p0, Lcom/htc/fm/FMRadio$3;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/htc/fm/FMRadio$3;->this$0:Lcom/htc/fm/FMRadio;

    const-wide/16 v1, -0x1

    #setter for: Lcom/htc/fm/FMRadio;->mPreShowTime:J
    invoke-static {v0, v1, v2}, Lcom/htc/fm/FMRadio;->access$302(Lcom/htc/fm/FMRadio;J)J

    .line 1382
    return-void
.end method
