.class public Lcom/htc/widget/DropDownList$PassThroughClickListener;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PassThroughClickListener"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/htc/widget/DropDownList;


# direct methods
.method public constructor <init>(Lcom/htc/widget/DropDownList;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DropDownList$PassThroughClickListener;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/widget/DropDownList$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DropDownList$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "DropDownList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PassThroughClickListener.onClick @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/widget/DropDownList$PassThroughClickListener;->this$0:Lcom/htc/widget/DropDownList;

    #calls: Lcom/htc/widget/DropDownList;->onClickImpl(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/htc/widget/DropDownList;->access$900(Lcom/htc/widget/DropDownList;Landroid/view/View;)V

    iget-object v0, p0, Lcom/htc/widget/DropDownList$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
