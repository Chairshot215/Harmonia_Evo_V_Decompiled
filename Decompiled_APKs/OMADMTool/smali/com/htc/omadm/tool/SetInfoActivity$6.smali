.class Lcom/htc/omadm/tool/SetInfoActivity$6;
.super Ljava/lang/Object;
.source "SetInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/tool/SetInfoActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/SetInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/omadm/tool/SetInfoActivity$6;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 212
    return-void
.end method
