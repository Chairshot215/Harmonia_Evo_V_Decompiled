.class Lcom/android/htcdialer/Dialer$3;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/Dialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$3;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$3;->this$0:Lcom/android/htcdialer/Dialer;

    const/4 v1, 0x0

    #setter for: Lcom/android/htcdialer/Dialer;->misHandlingMultipleStartKey:Z
    invoke-static {v0, v1}, Lcom/android/htcdialer/Dialer;->access$1102(Lcom/android/htcdialer/Dialer;Z)Z

    .line 734
    return-void
.end method
