.class Lcom/htc/android/epst/EPST$2;
.super Ljava/lang/Object;
.source "EPST.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/EPST;->authenticateAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/EPST;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/EPST;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/htc/android/epst/EPST$2;->this$0:Lcom/htc/android/epst/EPST;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/android/epst/EPST$2;->this$0:Lcom/htc/android/epst/EPST;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/EPST;->showDialog(I)V

    .line 379
    return-void
.end method
