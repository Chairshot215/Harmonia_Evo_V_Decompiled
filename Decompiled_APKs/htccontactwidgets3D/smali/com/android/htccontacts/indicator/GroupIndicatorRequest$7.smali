.class Lcom/android/htccontacts/indicator/GroupIndicatorRequest$7;
.super Landroid/database/ContentObserver;
.source "GroupIndicatorRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->getMissCallObserver()Landroid/database/ContentObserver;
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
    .line 483
    iput-object p1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$7;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 486
    return-void
.end method
