.class Lcom/htc/android/fusion/calculator/Widget$9;
.super Ljava/lang/Object;
.source "Widget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/fusion/calculator/Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/fusion/calculator/Widget;


# direct methods
.method constructor <init>(Lcom/htc/android/fusion/calculator/Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/htc/android/fusion/calculator/Widget$9;->this$0:Lcom/htc/android/fusion/calculator/Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget$9;->this$0:Lcom/htc/android/fusion/calculator/Widget;

    #calls: Lcom/htc/android/fusion/calculator/Widget;->setReferences()V
    invoke-static {v0}, Lcom/htc/android/fusion/calculator/Widget;->access$600(Lcom/htc/android/fusion/calculator/Widget;)V

    .line 736
    return-void
.end method
