.class Lcom/htc/home/personalize/olrespicker/OnlineResPicker$9;
.super Ljava/lang/Object;
.source "OnlineResPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->doCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$9;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1033
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnClickListener.onClick: tap to reload"

    invoke-static {v0, v1}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$9;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #calls: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->change2LoadingView()V
    invoke-static {v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$1500(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V

    .line 1035
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$9;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-virtual {v0}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->askDB2load()V

    .line 1036
    return-void
.end method
