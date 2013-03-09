.class Lcom/htc/android/epst/EPST$10$1;
.super Ljava/lang/Thread;
.source "EPST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/EPST$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/epst/EPST$10;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/EPST$10;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/htc/android/epst/EPST$10$1;->this$1:Lcom/htc/android/epst/EPST$10;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/htc/android/epst/EPST$10$1;->this$1:Lcom/htc/android/epst/EPST$10;

    iget-object v0, v0, Lcom/htc/android/epst/EPST$10;->this$0:Lcom/htc/android/epst/EPST;

    #calls: Lcom/htc/android/epst/EPST;->authenticateAction()V
    invoke-static {v0}, Lcom/htc/android/epst/EPST;->access$800(Lcom/htc/android/epst/EPST;)V

    .line 581
    return-void
.end method
