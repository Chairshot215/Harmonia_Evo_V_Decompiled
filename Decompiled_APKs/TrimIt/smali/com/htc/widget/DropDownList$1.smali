.class Lcom/htc/widget/DropDownList$1;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/DropDownList;->setOnDropDownListener(Lcom/htc/widget/DropDownList$OnDropDownListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DropDownList;


# direct methods
.method constructor <init>(Lcom/htc/widget/DropDownList;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/htc/widget/DropDownList$1;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/htc/widget/DropDownList$1;->this$0:Lcom/htc/widget/DropDownList;

    #getter for: Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;
    invoke-static {v0}, Lcom/htc/widget/DropDownList;->access$200(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/DropDownList$OnDropDownListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/DropDownList$OnDropDownListener;->onDismiss()V

    .line 520
    return-void
.end method
