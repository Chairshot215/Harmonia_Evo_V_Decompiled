.class Lcom/htc/widget/DropDownList$DropDownItemClickListener;
.super Ljava/lang/Object;
.source "DropDownList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DropDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DropDownList;


# direct methods
.method private constructor <init>(Lcom/htc/widget/DropDownList;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList$DropDownItemClickListener;-><init>(Lcom/htc/widget/DropDownList;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;->this$0:Lcom/htc/widget/DropDownList;

    #calls: Lcom/htc/widget/DropDownList;->performItemClick(Landroid/view/View;IJ)V
    invoke-static {v0, p2, p3, p4, p5}, Lcom/htc/widget/DropDownList;->access$800(Lcom/htc/widget/DropDownList;Landroid/view/View;IJ)V

    return-void
.end method
