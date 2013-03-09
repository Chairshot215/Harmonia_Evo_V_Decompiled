.class Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;
.super Ljava/lang/Object;
.source "HtcQuickSelectionWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/quickselection/HtcQuickSelectionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Action"
.end annotation


# instance fields
.field actionListener:Landroid/view/View$OnClickListener;

.field description:Ljava/lang/String;

.field id:Ljava/lang/Object;

.field final synthetic this$0:Lcom/htc/quickselection/HtcQuickSelectionWindow;


# direct methods
.method constructor <init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;Ljava/lang/Object;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->this$0:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->actionListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->id:Ljava/lang/Object;

    iput-object p3, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->actionListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->id:Ljava/lang/Object;

    return-object v0
.end method

.method public getListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;->actionListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method
