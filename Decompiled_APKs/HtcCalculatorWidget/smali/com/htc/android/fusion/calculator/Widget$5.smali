.class Lcom/htc/android/fusion/calculator/Widget$5;
.super Lcom/htc/fusion/fx/MessageListener;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/fusion/calculator/Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/fusion/calculator/Widget;


# direct methods
.method constructor <init>(Lcom/htc/android/fusion/calculator/Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/htc/android/fusion/calculator/Widget$5;->this$0:Lcom/htc/android/fusion/calculator/Widget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 458
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/fusion/calculator/Widget$5;->onMessageReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Void;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget$5;->this$0:Lcom/htc/android/fusion/calculator/Widget;

    #calls: Lcom/htc/android/fusion/calculator/Widget;->onClearButtonClick()V
    invoke-static {v0}, Lcom/htc/android/fusion/calculator/Widget;->access$200(Lcom/htc/android/fusion/calculator/Widget;)V

    .line 461
    return-void
.end method
