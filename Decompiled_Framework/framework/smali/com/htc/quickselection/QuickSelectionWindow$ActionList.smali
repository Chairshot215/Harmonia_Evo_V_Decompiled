.class Lcom/htc/quickselection/QuickSelectionWindow$ActionList;
.super Ljava/util/LinkedList;
.source "QuickSelectionWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/quickselection/QuickSelectionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lcom/htc/quickselection/QuickSelectionWindow$Action;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/quickselection/QuickSelectionWindow;


# direct methods
.method private constructor <init>(Lcom/htc/quickselection/QuickSelectionWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/quickselection/QuickSelectionWindow$ActionList;->this$0:Lcom/htc/quickselection/QuickSelectionWindow;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/quickselection/QuickSelectionWindow;Lcom/htc/quickselection/QuickSelectionWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/quickselection/QuickSelectionWindow$ActionList;-><init>(Lcom/htc/quickselection/QuickSelectionWindow;)V

    return-void
.end method
