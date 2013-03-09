.class Lcom/htc/omadm/tool/OMADMTool$3;
.super Ljava/lang/Object;
.source "OMADMTool.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/tool/OMADMTool;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/OMADMTool;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/OMADMTool;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/omadm/tool/OMADMTool$3;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 283
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 284
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
