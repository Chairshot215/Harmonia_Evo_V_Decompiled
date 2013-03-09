.class Lcom/android/htccontacts/indicator/GroupIndicatorRequest$11;
.super Landroid/database/ContentObserver;
.source "GroupIndicatorRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/indicator/GroupIndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$11;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$11;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #calls: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->reQueueAllExceptData()V
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$1000(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    .line 629
    return-void
.end method
