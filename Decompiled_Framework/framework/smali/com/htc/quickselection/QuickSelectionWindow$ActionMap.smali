.class Lcom/htc/quickselection/QuickSelectionWindow$ActionMap;
.super Ljava/util/HashMap;
.source "QuickSelectionWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/quickselection/QuickSelectionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/htc/quickselection/QuickSelectionWindow$ActionList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/quickselection/QuickSelectionWindow;


# direct methods
.method private constructor <init>(Lcom/htc/quickselection/QuickSelectionWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/quickselection/QuickSelectionWindow$ActionMap;->this$0:Lcom/htc/quickselection/QuickSelectionWindow;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/quickselection/QuickSelectionWindow;Lcom/htc/quickselection/QuickSelectionWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/quickselection/QuickSelectionWindow$ActionMap;-><init>(Lcom/htc/quickselection/QuickSelectionWindow;)V

    return-void
.end method

.method private collect(Ljava/lang/String;Lcom/htc/quickselection/QuickSelectionWindow$Action;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/htc/quickselection/QuickSelectionWindow$ActionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/quickselection/QuickSelectionWindow$ActionList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/quickselection/QuickSelectionWindow$ActionList;

    iget-object v1, p0, Lcom/htc/quickselection/QuickSelectionWindow$ActionMap;->this$0:Lcom/htc/quickselection/QuickSelectionWindow;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/quickselection/QuickSelectionWindow$ActionList;-><init>(Lcom/htc/quickselection/QuickSelectionWindow;Lcom/htc/quickselection/QuickSelectionWindow$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/quickselection/QuickSelectionWindow$ActionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/htc/quickselection/QuickSelectionWindow$ActionList;->add(Ljava/lang/Object;)Z

    return-void
.end method
