.class Lcom/htc/fm/FMPresetEditActivity$1;
.super Ljava/lang/Object;
.source "FMPresetEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMPresetEditActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMPresetEditActivity;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMPresetEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/htc/fm/FMPresetEditActivity$1;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/fm/FMPresetEditActivity$1;->this$0:Lcom/htc/fm/FMPresetEditActivity;

    invoke-virtual {v0}, Lcom/htc/fm/FMPresetEditActivity;->finish()V

    .line 197
    return-void
.end method
