.class Lcom/google/android/finsky/layout/OverviewBucketEntry$1;
.super Ljava/lang/Object;
.source "OverviewBucketEntry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/OverviewBucketEntry;->configureActionPack(ILcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/OverviewBucketEntry;

.field final synthetic val$onActionListener:Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/OverviewBucketEntry;Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry$1;->this$0:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iput-object p2, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry$1;->val$onActionListener:Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry$1;->val$onActionListener:Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;

    iget-object v1, p0, Lcom/google/android/finsky/layout/OverviewBucketEntry$1;->this$0:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    #getter for: Lcom/google/android/finsky/layout/OverviewBucketEntry;->mDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->access$000(Lcom/google/android/finsky/layout/OverviewBucketEntry;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;->onAction(Lcom/google/android/finsky/api/model/Document;)V

    .line 144
    return-void
.end method
